package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetFeedbacksTable(ctx *context.Context) table.Table {

	feedbacksTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := feedbacksTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("Title", "title", db.Varchar)
	info.AddField("User_id", "user_id", db.Int)
	info.AddField("Mobile", "mobile", db.Varchar)
	info.AddField("Type", "type", db.Tinyint)
	info.AddField("Content", "content", db.Varchar)
	info.AddField("Picture", "picture", db.Varchar)
	info.AddField("Status", "status", db.Tinyint)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("feedbacks").SetTitle("Feedbacks").SetDescription("Feedbacks")

	formList := feedbacksTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("Title", "title", db.Varchar, form.Text)
	formList.AddField("User_id", "user_id", db.Int, form.Number)
	formList.AddField("Mobile", "mobile", db.Varchar, form.Text)
	formList.AddField("Type", "type", db.Tinyint, form.Number)
	formList.AddField("Content", "content", db.Varchar, form.Text)
	formList.AddField("Picture", "picture", db.Varchar, form.Text)
	formList.AddField("Status", "status", db.Tinyint, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("feedbacks").SetTitle("Feedbacks").SetDescription("Feedbacks")

	return feedbacksTable
}
