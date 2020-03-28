package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
	"strconv"
	"time"
)

func GetGroupsTable(ctx *context.Context) table.Table {

	const title = "用户组"
	const description = "用户组"

	groupsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := groupsTable.GetInfo()
	info.SetFilterFormLayout(form.LayoutTwoCol)
	info.HideDeleteButton()
	info.HideDetailButton()

	info.AddField("Id", "id", db.Int).FieldSortable()
	info.AddField("名称", "name", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("排序", "sort", db.Tinyint).FieldEditAble(editType.Text)
	info.AddField("状态", "status", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "0" {
			return "隐藏"
		}

		return "正常"
	}).FieldFilterable(types.FilterType{FormType: form.SelectSingle}).FieldFilterOptions(types.FieldOptions{
		{Value: "0", Text: "隐藏"},
		{Value: "1", Text: "正常"},
	}).FieldEditAble(editType.Switch).FieldEditOptions(types.FieldOptions{
		{Value: "0", Text: "隐藏"},
		{Value: "1", Text: "正常"},
	})
	info.AddField("创建时间", "created_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})
	info.AddField("更新时间", "modified_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("groups").SetTitle(title).SetDescription(description)

	formList := groupsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("名称", "name", db.Varchar, form.Text)
	formList.AddField("排序", "sort", db.Tinyint, form.Number)
	formList.AddField("状态", "status", db.Tinyint, form.Switch).FieldOptions(types.FieldOptions{
		{Value: "0", Text: "隐藏"},
		{Value: "1", Text: "正常"},
	})

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

	formList.SetTable("groups").SetTitle(title).SetDescription(description)

	return groupsTable
}
