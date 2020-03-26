package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetCategoriesTable(ctx *context.Context) table.Table {

	categoriesTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := categoriesTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("Name", "name", db.Varchar)
	info.AddField("Description", "description", db.Varchar)
	info.AddField("Picture", "picture", db.Varchar)
	info.AddField("Status", "status", db.Tinyint)
	info.AddField("Created_on", "created_on", db.Int)
	info.AddField("Modified_on", "modified_on", db.Int)
	info.AddField("Deleted_on", "deleted_on", db.Int)

	info.SetTable("categories").SetTitle("Categories").SetDescription("Categories")

	formList := categoriesTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("Name", "name", db.Varchar, form.Text)
	formList.AddField("Description", "description", db.Varchar, form.Text)
	formList.AddField("Picture", "picture", db.Varchar, form.Text)
	formList.AddField("Status", "status", db.Tinyint, form.Number)
	formList.AddField("Created_on", "created_on", db.Int, form.Number)
	formList.AddField("Modified_on", "modified_on", db.Int, form.Number)
	formList.AddField("Deleted_on", "deleted_on", db.Int, form.Number)

	formList.SetTable("categories").SetTitle("Categories").SetDescription("Categories")

	return categoriesTable
}
