use std::str::FromStr;

use axum::{extract::State, http::StatusCode, routing::get, Json, Router};
use server::User;
use sqlx::{sqlite::SqliteConnectOptions, Executor, SqlitePool};

mod server;

#[tokio::main]
async fn main() {
    let conn_opts = SqliteConnectOptions::from_str("file:memory?mode=memory&cache=shared").unwrap();

    let pool = SqlitePool::connect_with(conn_opts).await.unwrap();

    let mut conn = pool.acquire().await.unwrap();

    conn.execute(include_str!("migrate.sql")).await.unwrap();

    let app = Router::new()
        .route("/users", get(get_users))
        .with_state(pool);

    axum::Server::bind(&"127.0.0.1:38080".parse().unwrap())
        .serve(app.into_make_service())
        .await
        .unwrap()
}

async fn get_users(State(pool): State<SqlitePool>) -> (StatusCode, Json<Vec<User>>) {
    let users = sqlx::query_as!(User, "SELECT * FROM users;")
        .fetch_all(&pool)
        .await
        .unwrap();

    (StatusCode::OK, Json(users))
}
