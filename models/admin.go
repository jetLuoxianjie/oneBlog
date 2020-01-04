package models

type Admin struct {
	Name     string `json:"username"`
	Password string `json:"password"`
}
