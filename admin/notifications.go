package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetNotificationsTable(ctx *context.Context) table.Table {

	notificationsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := notificationsTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("From_user_id", "from_user_id", db.Int)
	info.AddField("User_id", "user_id", db.Int)
	info.AddField("Data_id", "data_id", db.Int)
	info.AddField("Type_id", "type_id", db.Tinyint)
	info.AddField("Comment_id", "comment_id", db.Int)
	info.AddField("Content", "content", db.Varchar)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("notifications").SetTitle("Notifications").SetDescription("Notifications")

	formList := notificationsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("From_user_id", "from_user_id", db.Int, form.Number)
	formList.AddField("User_id", "user_id", db.Int, form.Number)
	formList.AddField("Data_id", "data_id", db.Int, form.Number)
	formList.AddField("Type_id", "type_id", db.Tinyint, form.Number)
	formList.AddField("Comment_id", "comment_id", db.Int, form.Number)
	formList.AddField("Content", "content", db.Varchar, form.Text)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("notifications").SetTitle("Notifications").SetDescription("Notifications")

	return notificationsTable
}
