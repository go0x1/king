package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
	"king/models"
	"strconv"
)

func GetFeedbacksTable(ctx *context.Context) table.Table {
	const title = "意见反馈"
	const description = "意见反馈"

	feedbacksTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := feedbacksTable.GetInfo()

	info.HideNewButton()
	info.HideDeleteButton()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("标题", "title", db.Varchar)
	info.AddField("用户名", "user_id", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.Atoi(value.Value)
		userInfo, err := models.GetUserInfo(n)
		if err != nil {
			return ""
		}
		return userInfo.Username
	})
	info.AddField("手机号", "mobile", db.Varchar)
	info.AddField("类型", "type", db.Tinyint)
	info.AddField("内容", "content", db.Varchar)
	info.AddField("图片", "picture", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		return template.Default().Image().SetSrc(`//quick.go-admin.cn/demo/assets/dist/img/gopher_avatar.png`).
			SetHeight("120").SetWidth("120").WithModal().GetContent()
	})
	info.AddField("状态", "status", db.Tinyint).FieldEditAble(editType.Switch).FieldEditOptions(types.FieldOptions{
		{Value: STATUS_DISABLE, Text: "未审核"},
		{Value: STATUS_ENABLE, Text: "已审核"},
	})
	info.AddField("创建时间", "created_at", db.Int)
	info.AddField("更新时间", "modified_at", db.Int)

	info.SetTable("feedbacks").SetTitle(title).SetDescription(description)

	formList := feedbacksTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("标题", "title", db.Varchar, form.Text)
	formList.AddField("User_id", "user_id", db.Int, form.Number)
	formList.AddField("手机号", "mobile", db.Varchar, form.Text)
	formList.AddField("类型", "type", db.Tinyint, form.Number)
	formList.AddField("内容", "content", db.Varchar, form.Text)
	formList.AddField("图片", "picture", db.Varchar, form.Text)
	formList.AddField("状态", "status", db.Tinyint, form.Number)

	formList.SetTable("feedbacks").SetTitle(title).SetDescription(description)

	return feedbacksTable
}