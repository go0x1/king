package models

import "github.com/jinzhu/gorm"

type Category struct {
	Model

	Name string `json:"name"`
	Description string `json:"description"`
	Picture string `json:"picture"`
	Status int `json:"status"`
}

func GetCategories(pageNum int, pageSize int, maps interface{}) ([]Category, error) {
	var (
		categories []Category
		err  error
	)

	if pageSize > 0 && pageNum > 0 {
		err = db.Where(maps).Find(&categories).Offset(pageNum).Limit(pageSize).Error
	} else {
		err = db.Where(maps).Find(&categories).Error
	}

	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}

	return categories, nil
}

// ExistCategoryByName checks if there is a category with the same name
func ExistCategoryByName(name string) (bool, error) {
	var category Category
	err := db.Select("id").Where("name = ? AND deleted_at = ? ", name, 0).First(&category).Error
	if err != nil && err != gorm.ErrRecordNotFound {
		return false, err
	}

	if category.ID > 0 {
		return true, nil
	}

	return false, nil
}

func GetCategoryTotal(maps interface{}) (int, error) {
	var count int
	if err := db.Model(&Category{}).Where(maps).Count(&count).Error; err != nil {
		return 0, err
	}

	return count, nil
}