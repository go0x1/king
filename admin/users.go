package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetUsersTable(ctx *context.Context) table.Table {

	usersTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := usersTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("用户名", "username", db.Varchar)
	info.AddField("昵称", "nickname", db.Varchar)
	info.AddField("邮箱", "email", db.Varchar)
	info.AddField("手机号", "mobile", db.Varchar)
	info.AddField("Gender", "gender", db.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "0" {
			return "女"
		}

		return "男"
	})
	info.AddField("Avatar", "avatar", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		return template.Default().Image().SetSrc(`//quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png`).
			SetHeight("120").SetWidth("120").WithModal().GetContent()
	})
	info.AddField("人气值", "reputation", db.Int)
	info.AddField("分组", "group_id", db.Int)
	info.AddField("加入时间", "join_time", db.Text)
	info.AddField("加入ip", "join_ip", db.Varchar)
	info.AddField("最近登陆时间", "last_login_time", db.Text)
	info.AddField("创建时间", "created_at", db.Text)
	info.AddField("更新时间", "modified_at", db.Text)

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
