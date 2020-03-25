package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	"strconv"
	"time"
)

const STATUS_DISABLE = "0"
const STATUS_ENABLE = "1"

func GetTagsTable(ctx *context.Context) table.Table {

	tagsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := tagsTable.GetInfo().SetFilterFormLayout(form.LayoutTwoCol)

	info.AddField("Id", "id", db.Int).FieldSortable()
	info.AddField("名称", "name", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("状态", "status", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == STATUS_DISABLE {
			return "关闭"
		} else {
			return "启用"
		}
	}).FieldFilterable(types.FilterType{FormType: form.SelectSingle}).FieldFilterOptions(types.FieldOptions{
		{Value: STATUS_DISABLE, Text: "关闭"},
		{Value: STATUS_ENABLE, Text: "启用"},
	})
	info.AddField("创建时间", "created_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})
	info.AddField("更新时间", "modified_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("tags").SetTitle("标签").SetDescription("标签")

	formList := tagsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("名称", "name", db.Varchar, form.Text)
	formList.AddField("状态", "status", db.Tinyint, form.SelectSingle).
		FieldOptions(types.FieldOptions{
			{Text: "关闭", Value: "0"},
			{Text: "启用", Value: "1"},
		}).FieldDefault("0")

	formList.SetPreProcessFn(func(values form2.Values) form2.Values {
		nowTimestamp := strconv.FormatInt(time.Now().Unix(), 10)
		if values.IsInsertPost() {
			values.Add("created_at", nowTimestamp)
			values.Add("modified_at", nowTimestamp)
		} else if values.IsUpdatePost() {
			values.Add("modified_at", nowTimestamp)
		}

		return values
	})

	formList.SetTable("tags").SetTitle("Tags").SetDescription("Tags")

	return tagsTable
}
