package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetFollowersTable(ctx *context.Context) table.Table {

	followersTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := followersTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("User_id", "user_id", db.Int)
	info.AddField("Follow_id", "follow_id", db.Int)
	info.AddField("Created_at", "created_at", db.Int)

	info.SetTable("followers").SetTitle("Followers").SetDescription("Followers")

	formList := followersTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("User_id", "user_id", db.Int, form.Number)
	formList.AddField("Follow_id", "follow_id", db.Int, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)

	formList.SetTable("followers").SetTitle("Followers").SetDescription("Followers")

	return followersTable
}
