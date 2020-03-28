package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	"king/models"
	"strconv"
	"time"
)

func GetReportsTable(ctx *context.Context) table.Table {

	const title = "举报"
	const description = "举报"

	reportsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := reportsTable.GetInfo()

	info.HideNewButton()
	info.HideDetailButton()

	info.AddField("Id", "id", db.Int).FieldSortable()
	info.AddField("用户", "user_id", db.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.Atoi(value.Value)
		userInfo, err := models.GetUserInfo(n)
		if err != nil {
			return ""
		}
		return userInfo.Username
	})
	info.AddField("内容id", "data_id", db.Int)
	info.AddField("内容类型", "type", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "0" {
			return "博文"
		}

		return "谈论"
	})
	info.AddField("举报类型", "report_type", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
		return "色情"
	})
	info.AddField("Content", "content", db.Mediumtext)
	info.AddField("状态", "status", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "0" {
			return "未处理"
		}

		return "已处理"
	})
	info.AddField("创建时间", "created_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})
	info.AddField("更新时间", "modified_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("reports").SetTitle(title).SetDescription(description)

	formList := reportsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldHide()
	formList.AddField("用户", "user_id", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.Atoi(value.Value)
		userInfo, err := models.GetUserInfo(n)
		if err != nil {
			return ""
		}
		return userInfo.Username
	})
	formList.AddField("内容id", "data_id", db.Int, form.Number).FieldNotAllowEdit()
	formList.AddField("内容类型", "type", db.Tinyint, form.Number)
	formList.AddField("举报类型", "report_type", db.Tinyint, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		return "色情"
	})
	formList.AddField("Content", "content", db.Mediumtext, form.RichText)
	formList.AddField("状态", "status", db.Tinyint, form.Switch).FieldOptions(types.FieldOptions{
		{Value: "0", Text: "未处理"},
		{Value: "1", Text: "已处理"},
	})
	formList.AddField("创建时间", "created_at", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})
	formList.AddField("更新时间", "modified_at", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	formList.SetTable("reports").SetTitle(title).SetDescription(description)

	return reportsTable
}
