package admin

import (
	"github.com/GoAdminGroup/go-admin/context"
	"github.com/GoAdminGroup/go-admin/modules/db"
	"github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"
	"github.com/GoAdminGroup/go-admin/template/types/form"
)

func GetReputationLogsTable(ctx *context.Context) table.Table {

	reputationLogsTable := table.NewDefaultTable(table.DefaultConfigWithDriver("mysql"))

	info := reputationLogsTable.GetInfo()

	info.AddField("Id", "id", db.Int).FieldFilterable()
	info.AddField("User_id", "user_id", db.Int)
	info.AddField("Data_id", "data_id", db.Int)
	info.AddField("Type", "type", db.Tinyint)
	info.AddField("Action", "action", db.Varchar)
	info.AddField("Score", "score", db.Int)
	info.AddField("Created_at", "created_at", db.Int)
	info.AddField("Modified_at", "modified_at", db.Int)
	info.AddField("Deleted_at", "deleted_at", db.Int)

	info.SetTable("reputation_logs").SetTitle("Reputation_logs").SetDescription("Reputation_logs")

	formList := reputationLogsTable.GetForm()

	formList.AddField("Id", "id", db.Int, form.Default).FieldNotAllowAdd()
	formList.AddField("User_id", "user_id", db.Int, form.Number)
	formList.AddField("Data_id", "data_id", db.Int, form.Number)
	formList.AddField("Type", "type", db.Tinyint, form.Number)
	formList.AddField("Action", "action", db.Varchar, form.Text)
	formList.AddField("Score", "score", db.Int, form.Number)
	formList.AddField("Created_at", "created_at", db.Int, form.Number)
	formList.AddField("Modified_at", "modified_at", db.Int, form.Number)
	formList.AddField("Deleted_at", "deleted_at", db.Int, form.Number)

	formList.SetTable("reputation_logs").SetTitle("Reputation_logs").SetDescription("Reputation_logs")

	return reputationLogsTable
}
