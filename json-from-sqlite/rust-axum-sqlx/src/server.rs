use sqlx::{pool, ConnectOptions};

#[derive(Debug, serde::Serialize)]
pub struct User {
    pub id: i64,
    pub name: String,
    pub email: String,
    pub age: f64,
    pub enabled: bool,
    #[serde(with = "time::serde::iso8601")]
    pub created_at: time::OffsetDateTime,
    #[serde(with = "time::serde::iso8601")]
    pub updated_at: time::OffsetDateTime,
}
