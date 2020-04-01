package models

import "github.com/jinzhu/gorm"

type Comment struct {
	Model

	DataId    int    `json:"data_id"`
	UserId    int    `json:"user_id"`
	ParentId  int    `json:"parent_id"`
	Content   string `json:"content"`
	LikeCount int    `json:"like_count"`
	Type      int    `json:"type"`
	Status    int    `json:"status"`
}

func AddComment(userId, dataId, dataType, parentId int, content string) error {
	comment := Comment{
		DataId:   dataId,
		UserId:   userId,
		ParentId: parentId,
		Content:  content,
		Type:     dataType,
	}

	if err := db.Create(comment).Error; err != nil {
		return err
	}

	return nil
}

func EditComment(commentId, data interface{}) error {
	if err := db.Model(&Comment{}).Where("id = ? AND deleted_at = ?", commentId, 0).Updates(data).Error; err != nil {
		return err
	}

	return nil
}

func GetComments(pageNum int, pageSize int, maps interface{}, order interface{}) ([]Comment, error) {
	var (
		comments []Comment
		err  error
	)

	if pageSize > 0 && pageNum > 0 {
		err = db.Where(maps).Find(&comments).Order(order).Offset(pageNum).Limit(pageSize).Error
	} else {
		err = db.Where(maps).Find(&comments).Order(order).Error
	}

	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}

	return comments, nil
}
