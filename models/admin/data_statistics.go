package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetDataStatisticsTable(ctx *context.Context) table.Table {

	dataStatisticsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := dataStatisticsTable.GetInfo()

	info.AddField("Data_id", "data_id", db.Int)
	info.AddField("Read_count", "read_count", db.Int)
	info.AddField("Read_day", "read_day", db.Int)
	info.AddField("Read_weekly", "read_weekly", db.Int)
	info.AddField("Read_month", "read_month", db.Int)
	info.AddField("Read_year", "read_year", db.Int)
	info.AddField("Comment_count", "comment_count", db.Int)
	info.AddField("Like_count", "like_count", db.Int)
	info.AddField("Collect_count", "collect_count", db.Int)
	info.AddField("Type", "type", db.Tinyint)

	info.SetTable("data_statistics").SetTitle("Data_statistics").SetDescription("Data_statistics")

	formList := dataStatisticsTable.GetForm()

	formList.AddField("Data_id", "data_id", db.Int, form.Number)
	formList.AddField("Read_count", "read_count", db.Int, form.Number)
	formList.AddField("Read_day", "read_day", db.Int, form.Number)
	formList.AddField("Read_weekly", "read_weekly", db.Int, form.Number)
	formList.AddField("Read_month", "read_month", db.Int, form.Number)
	formList.AddField("Read_year", "read_year", db.Int, form.Number)
	formList.AddField("Comment_count", "comment_count", db.Int, form.Number)
	formList.AddField("Like_count", "like_count", db.Int, form.Number)
	formList.AddField("Collect_count", "collect_count", db.Int, form.Number)
	formList.AddField("Type", "type", db.Tinyint, form.Number)

	formList.SetTable("data_statistics").SetTitle("Data_statistics").SetDescription("Data_statistics")

	return dataStatisticsTable
}
