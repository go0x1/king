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
	"time"
	"strconv"
)

func GetFriendlyLinksTable(ctx *context.Context) table.Table {

	const title = "友链"
	const description = "友链"

	friendlyLinksTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := friendlyLinksTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("名称", "name", db.Varchar).FieldEditAble()
	info.AddField("图片", "picture", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		return template.Default().Image().SetSrc(`//quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png`).
			SetHeight("120").SetWidth("120").WithModal().GetContent()
	})
	info.AddField("描述", "description", db.Varchar)
	info.AddField("链接", "url", db.Varchar).FieldEditAble()
	info.AddField("权重", "weight", db.Int).FieldEditAble()
	info.AddField("状态", "status", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
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
	info.AddField("创建时间", "created_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})
	info.AddField("更新时间", "modified_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("friendly_links").SetTitle(title).SetDescription(description)

	formList := friendlyLinksTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("名称", "name", db.Varchar, form.Text)
	formList.AddField("权重", "weight", db.Int, form.Number)
	formList.AddField("图片", "picture", db.Varchar, form.File)
	formList.AddField("描述", "description", db.Varchar, form.Text)
	formList.AddField("链接", "url", db.Varchar, form.Url)
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

	formList.SetTable("friendly_links").SetTitle(title).SetDescription(description)

	return friendlyLinksTable
}
