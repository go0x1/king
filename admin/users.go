package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetUsersTable(ctx *context.Context) table.Table {

	usersTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := usersTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("Username", "username", db.Varchar)
	info.AddField("Nickname", "nickname", db.Varchar)
	info.AddField("Password", "password", db.Varchar)
	info.AddField("Email", "email", db.Varchar)
	info.AddField("Mobile", "mobile", db.Varchar)
	info.AddField("Gender", "gender", db.Tinyint)
	info.AddField("Avatar", "avatar", db.Varchar)
	info.AddField("Reputation", "reputation", db.Int)
	info.AddField("Group_id", "group_id", db.Int)
	info.AddField("Join_time", "join_time", db.Int)
	info.AddField("Join_ip", "join_ip", db.Varchar)
	info.AddField("Last_login_time", "last_login_time", db.Int)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("users").SetTitle("Users").SetDescription("Users")

	formList := usersTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("Username", "username", db.Varchar, form.Text)
	formList.AddField("Nickname", "nickname", db.Varchar, form.Text)
	formList.AddField("Password", "password", db.Varchar, form.Password)
	formList.AddField("Email", "email", db.Varchar, form.Email)
	formList.AddField("Mobile", "mobile", db.Varchar, form.Text)
	formList.AddField("Gender", "gender", db.Tinyint, form.Number)
	formList.AddField("Avatar", "avatar", db.Varchar, form.Text)
	formList.AddField("Reputation", "reputation", db.Int, form.Number)
	formList.AddField("Group_id", "group_id", db.Int, form.Number)
	formList.AddField("Join_time", "join_time", db.Int, form.Number)
	formList.AddField("Join_ip", "join_ip", db.Varchar, form.Text)
	formList.AddField("Last_login_time", "last_login_time", db.Int, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("users").SetTitle("Users").SetDescription("Users")

	return usersTable
}
