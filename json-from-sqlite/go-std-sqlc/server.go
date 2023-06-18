package main

import (
	"encoding/json"
	"log"
	"net/http"
	"time"
)

type server struct {
	db *Queries
}

type userResponse struct {
	ID        int64     `json:"id"`
	Name      string    `json:"name"`
	Email     string    `json:"email"`
	Age       float64   `json:"age"`
	Enabled   bool      `json:"enabled"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
}

func (s server) handleListUsers(w http.ResponseWriter, r *http.Request) {
	users, err := s.db.ListUsers(r.Context())
	if err != nil {
		log.Printf("error listing users: %s", err)
		http.Error(w, http.StatusText(500), 500)
		return
	}

	urs := make([]userResponse, len(users))
	for i, user := range users {
		urs[i] = userResponse(user)
	}

	w.Header().Set("Content-Type", "application/json")
	err = json.NewEncoder(w).Encode(urs)
	if err != nil {
		log.Printf("error encoding users: %s", err)
		http.Error(w, http.StatusText(500), 500)
		return
	}
}
