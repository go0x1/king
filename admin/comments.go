package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	"github.com/GoAdminGroup/go-admin/template/types"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
	"king/models"
	"strconv"
	"time"
)

func GetCommentsTable(ctx *context.Context) table.Table {

	const title = "评论"
	const description = "评论"

	commentsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := commentsTable.GetInfo()

	info.HideNewButton()
	info.HideDeleteButton()
	info.HideDetailButton()

	info.AddField("Id", "id", db.Int).FieldSortable()
	info.AddField("内容id", "data_id", db.Int)
	info.AddField("内容类型", "type", db.Tinyint).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "0" {
			return "博文"
		}

		return "谈论"
	})
	info.AddField("评论用户", "user_id", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.Atoi(value.Value)
		userInfo, err := models.GetUserInfo(n)
		if err != nil {
			return ""
		}
		return value.Value + userInfo.Username
	})
	info.AddField("被评论评论", "parent_id", db.Int)
	info.AddField("评论内容", "content", db.Mediumtext)
	info.AddField("点赞数", "like_count", db.Int)
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
	info.AddField("修改时间", "modified_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("comments").SetTitle(title).SetDescription(description)

	formList := commentsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldHide()
	formList.AddField("内容id", "data_id", db.Int, form.Text)
	formList.AddField("评论用户", "user_id", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.Atoi(value.Value)
		userInfo, err := models.GetUserInfo(n)
		if err != nil {
			return ""
		}
		return value.Value + userInfo.Username
	}).FieldNotAllowEdit()
	formList.AddField("被评论评论", "parent_id", db.Int, form.Text).FieldNotAllowEdit()
	formList.AddField("评论内容", "content", db.Mediumtext, form.RichText).FieldNotAllowEdit()
	formList.AddField("点赞数", "like_count", db.Int, form.Text).FieldNotAllowEdit()
	formList.AddField("内容类型", "type", db.Tinyint, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "0" {
			return "博文"
		}

		return "谈论"
	}).FieldNotAllowEdit()
	formList.AddField("Status", "status", db.Tinyint, form.Switch).FieldOptions(types.FieldOptions{
		{Value: "0", Text: "隐藏"},
		{Value: "1", Text: "正常"},
	})
	formList.AddField("Created_at", "created_at", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	}).FieldNotAllowEdit()
	formList.AddField("Modified_at", "modified_at", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
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

	formList.SetTable("comments").SetTitle(title).SetDescription(description)

	return commentsTable
}
