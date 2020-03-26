package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetTagsTable(ctx *context.Context) table.Table {

	tagsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := tagsTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("Name", "name", db.Varchar)
	info.AddField("Status", "status", db.Tinyint)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("tags").SetTitle("Tags").SetDescription("Tags")

	formList := tagsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("Name", "name", db.Varchar, form.Text)
	formList.AddField("Status", "status", db.Tinyint, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("tags").SetTitle("Tags").SetDescription("Tags")

	return tagsTable
}
