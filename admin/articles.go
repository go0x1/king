package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetArticlesTable(ctx *context.Context) table.Table {

	articlesTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := articlesTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("User_id", "user_id", db.Int)
	info.AddField("Title", "title", db.Varchar)
	info.AddField("Content", "content", db.Mediumtext)
	info.AddField("Read_count", "read_count", db.Int)
	info.AddField("Comment_count", "comment_count", db.Int)
	info.AddField("Like_count", "like_count", db.Int)
	info.AddField("Status", "status", db.Tinyint)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("articles").SetTitle("Articles").SetDescription("Articles")

	formList := articlesTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("User_id", "user_id", db.Int, form.Number)
	formList.AddField("Title", "title", db.Varchar, form.Text)
	formList.AddField("Content", "content", db.Mediumtext, form.RichText)
	formList.AddField("Read_count", "read_count", db.Int, form.Number)
	formList.AddField("Comment_count", "comment_count", db.Int, form.Number)
	formList.AddField("Like_count", "like_count", db.Int, form.Number)
	formList.AddField("Status", "status", db.Tinyint, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("articles").SetTitle("Articles").SetDescription("Articles")

	return articlesTable
}
