package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types"
	"king/models"
	"strconv"
	"time"
)

func GetReputationLogsTable(ctx *context.Context) table.Table {

	const title = "人气值"
	const description = "人气值"

	reputationLogsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := reputationLogsTable.GetInfo()

	info.HideDetailButton()
	info.HideNewButton()
	info.HideEditButton()

	info.AddField("Id", "id", db.Int).FieldSortable()
	info.AddField("用户名", "user_id", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
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
	info.AddField("操作", "action", db.Varchar).FieldDisplay(func(value types.FieldModel) interface{} {
		if value.Value == "up" {
			return "增加"
		}

		return "减少"
	})
	info.AddField("分数", "score", db.Int)
	info.AddField("创建时间", "created_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})
	info.AddField("更新时间", "modified_at", db.Int).FieldDisplay(func(value types.FieldModel) interface{} {
		n, _ := strconv.ParseInt(value.Value, 10, 64)
		return time.Unix(n, 0).Format("2006-01-02 15:04:05")
	})

	info.SetTable("reputation_logs").SetTitle(title).SetDescription(description)

	return reputationLogsTable
}
