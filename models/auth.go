package models

import (
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
	if err != nil && err != gorm.ErrRecordNotFound {
		return false, err
	}

	if auth.ID > 0 {
		return true, nil
	}

	return false, nil
}

func GetUserInfo(userId int) (*Users, error) {
	var user Users
	err := db.Where(Users{ID: userId}).First(&user).Error
	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}

	if user.ID > 0 {
		return &user, nil
	}

	return nil, err
}
