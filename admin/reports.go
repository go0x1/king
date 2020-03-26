package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetReportsTable(ctx *context.Context) table.Table {

	reportsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := reportsTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("Data_id", "data_id", db.Int)
	info.AddField("Type", "type", db.Tinyint)
	info.AddField("Report_type", "report_type", db.Tinyint)
	info.AddField("Content", "content", db.Mediumtext)
	info.AddField("Status", "status", db.Tinyint)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("reports").SetTitle("Reports").SetDescription("Reports")

	formList := reportsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("Data_id", "data_id", db.Int, form.Number)
	formList.AddField("Type", "type", db.Tinyint, form.Number)
	formList.AddField("Report_type", "report_type", db.Tinyint, form.Number)
	formList.AddField("Content", "content", db.Mediumtext, form.RichText)
	formList.AddField("Status", "status", db.Tinyint, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("reports").SetTitle("Reports").SetDescription("Reports")

	return reportsTable
}
