package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetCommentsTable(ctx *context.Context) table.Table {

	commentsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := commentsTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("Data_id", "data_id", db.Int)
	info.AddField("User_id", "user_id", db.Int)
	info.AddField("Parent_id", "parent_id", db.Int)
	info.AddField("Content", "content", db.Mediumtext)
	info.AddField("Like_count", "like_count", db.Int)
	info.AddField("Type", "type", db.Tinyint)
	info.AddField("Status", "status", db.Tinyint)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("comments").SetTitle("Comments").SetDescription("Comments")

	formList := commentsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("Data_id", "data_id", db.Int, form.Number)
	formList.AddField("User_id", "user_id", db.Int, form.Number)
	formList.AddField("Parent_id", "parent_id", db.Int, form.Number)
	formList.AddField("Content", "content", db.Mediumtext, form.RichText)
	formList.AddField("Like_count", "like_count", db.Int, form.Number)
	formList.AddField("Type", "type", db.Tinyint, form.Number)
	formList.AddField("Status", "status", db.Tinyint, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("comments").SetTitle("Comments").SetDescription("Comments")

	return commentsTable
}
