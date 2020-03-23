package models

import (
	"fmt"
	"github.com/jinzhu/gorm"
)

type Users struct {
	ID       int    `gorm:"primary_key" json:"id"`
	Username string `json:"username"`
	Password string `json:"password"`
}

// CheckAuth checks if authentication information exists
func CheckAuth(username, password string) (bool, error) {
	var auth Users
	err := db.Select("id").Where(Users{Username: username, Password: password}).First(&auth).Error
	fmt.Print(err)
	if err != nil && err != gorm.ErrRecordNotFound {
		return false, err
	}

	if auth.ID > 0 {
		return true, nil
	}

	return false, nil
}
