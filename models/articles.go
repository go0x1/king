package models

import "github.com/jinzhu/gorm"

type Article struct {
	Model

	UserId int `json:"user_id"`
	Title string `json:"title"`
	Content string `json:"content"`
	ReadCount int `json:"read_count"`
	CommentCount int `json:"comment_count"`
	LikeCount int `json:"like_count"`
	Status int `json:"status"`
}

func AddArticle(userId int, title, content string) error {
	article := Article{
		UserId:       userId,
		Title:        title,
		Content:      content,
	}

	if err := db.Create(&article).Error; err != nil {
		return err
	}

	return nil
}

func EditArticle(id int, data interface{}) error {
	if err := db.Model(&Article{}).Where("id = ? AND deleted_at = ?", id, 0).Updates(data).Error; err != nil {
		return err
	}

	return nil
}

func GetArticles(pageNum int, pageSize int, maps interface{}, order interface{}) ([]Article, error) {
	var (
		articles []Article
		err  error
	)

	if pageSize > 0 && pageNum > 0 {
		err = db.Where(maps).Find(&articles).Order(order).Offset(pageNum).Limit(pageSize).Error
	} else {
		err = db.Where(maps).Find(&articles).Order(order).Error
	}

	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}

	return articles, nil
}

func GetArticleTotal(maps interface{}) (int, error) {
	var count int
	if err := db.Model(&Article{}).Where(maps).Count(&count).Error; err != nil {
		return 0, err
	}

	return count, nil
}

func DeleteArticle(id int) error {
	if err := db.Where("id = ?", id).Delete(&Article{}).Error; err != nil {
		return err
	}

	return nil
}
