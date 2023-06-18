package main

import (
	"database/sql"
	_ "embed"
	"fmt"
	"net/http"

	_ "github.com/mattn/go-sqlite3"
)

//go:embed schema.sql
var schema string

func main() {
	db, err := sql.Open("sqlite3", "file:bench.db?cache=shared&mode=rwc")
	if err != nil {
		panic(err)
	}
	defer db.Close()

	_, err = db.Exec(schema)
	if err != nil {
		panic(err)
	}

	server := server{
		db: New(db),
	}

	http.HandleFunc("/users", server.handleListUsers)
	err = http.ListenAndServe("127.0.0.1:48080", nil)
	if err != nil {
		fmt.Println(err)
	}
}
