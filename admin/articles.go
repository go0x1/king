package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	form2 "github.com/GoAdminGroup/go-admin/plugins/admin/modules/form"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"github.com/GoAdminGroup/go-admin/template/types/form"
	editType "github.com/GoAdminGroup/go-admin/template/types/table"
	"king/models"
	"strconv"
	"time"
)

func GetArticlesTable(ctx *context.Context) table.Table {

	const title = "博文"
	const description = "博文"

	articlesTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := articlesTable.GetInfo().SetFilterFormLayout(form.LayoutTwoCol)

	info.HideDeleteButton()
	info.HideDetailButton()
	info.HideNewButton()

	info.AddField("Id", "id", db.Int).FieldSortable()
	info.AddField("用户名", "user_id", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.Atoi(value.Value)
		userInfo, err := models.GetUserInfo(n)
		if err != nil {
			return ""
		}
		return userInfo.Username
	})
	info.AddField("标题", "title", db.Varchar).FieldFilterable(types.FilterType{Operator: types.FilterOperatorLike})
	info.AddField("阅读数", "read_count", db.Int)
	info.AddField("评论数", "comment_count", db.Int)
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
	info.AddField("更新时间", "modified_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("articles").SetTitle(title).SetDescription(description)

	formList := articlesTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldHide()
	formList.AddField("用户", "user_id", db.Int, form.Text).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.Atoi(value.Value)
		userInfo, err := models.GetUserInfo(n)
		if err != nil {
			return ""
		}
		return userInfo.Username
	}).FieldNotAllowEdit()
	formList.AddField("Title", "title", db.Varchar, form.Text).FieldNotAllowEdit()
	formList.AddField("Content", "content", db.Mediumtext, form.RichText).FieldNotAllowEdit()
	formList.AddField("Read_count", "read_count", db.Int, form.Text).FieldNotAllowEdit()
	formList.AddField("Comment_count", "comment_count", db.Int, form.Text).FieldNotAllowEdit()
	formList.AddField("Like_count", "like_count", db.Int, form.Text).FieldNotAllowEdit()
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
	})
	formList.SetPreProcessFn(func(values form2.Values) form2.Values {
		nowTimestamp := strconv.FormatInt(time.Now().Unix(), 10)
		if values.IsUpdatePost() {
			values.Add("modified_at", nowTimestamp)
		}

		return values
	})

	formList.SetTable("articles").SetTitle(title).SetDescription(description)

	return articlesTable
}
