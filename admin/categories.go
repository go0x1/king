package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
	"strconv"
	"time"
)

func GetCategoriesTable(ctx *context.Context) table.Table {
	const title = "栏目"
	const description = "栏目"

	categoriesTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := categoriesTable.GetInfo()

	info.HideDeleteButton()
	info.HideEditButton()

	info.AddField("Id", "id", db.Int).FieldSortable()
	info.AddField("名称", "name", db.Varchar)
	info.AddField("描述", "description", db.Varchar)
	info.AddField("图片", "picture", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		return template.Default().Image().SetSrc(`//quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png`).
			SetHeight("120").SetWidth("120").WithModal().GetContent()
	})
	info.AddField("Status", "状态", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "0" {
			return "隐藏"
		}

		return "显示"
	}).FieldFilterable(types.FilterType{FormType: form.SelectSingle}).FieldFilterOptions(types.FieldOptions{
		{Value: "0", Text: "隐藏"},
		{Value: "1", Text: "正常"},
	}).FieldEditAble(editType.Switch).FieldEditOptions(types.FieldOptions{
		{Value: "0", Text: "隐藏"},
		{Value: "1", Text: "正常"},
	})

	info.AddField("创建时间", "created_on", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})
	info.AddField("更新时间", "modified_on", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("categories").SetTitle(title).SetDescription(description)

	formList := categoriesTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldHide()
	formList.AddField("名称", "name", db.Varchar, form.Text)
	formList.AddField("描述", "description", db.Varchar, form.RichText)
	formList.AddField("图片", "picture", db.Varchar, form.Multifile).FieldOptionExt(map[string]interface{}{
		"maxFileCount": 10,
	})
	formList.AddField("状态", "status", db.Tinyint, form.Switch).FieldOptions(types.FieldOptions{
		{Value: "0", Text: "隐藏"},
		{Value: "1", Text: "正常"},
	})
	formList.AddField("创建时间", "created_on", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	}).FieldNotAllowEdit()
	formList.AddField("更新时间", "modified_on", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	}).FieldNotAllowEdit()
	formList.SetPreProcessFn(func(values form2.Values) form2.Values {
		nowTimestamp := strconv.FormatInt(time.Now().Unix(), 10)
		if values.IsUpdatePost() {
			values.Add("modified_at", nowTimestamp)
		}

		return values
	})

	formList.SetTable("categories").SetTitle(title).SetDescription(description)

	return categoriesTable
}
