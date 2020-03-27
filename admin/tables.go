package admin

import "github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"

// The key of Generators is the prefix of table info url.
// The corresponding value is the Form and Table data.
//
// http://{{config.Domain}}:{{Port}}/{{config.Prefix}}/info/{{key}}
//
// example:
//
// "articles" => http://localhost:9033/admin/info/articles
// "categories" => http://localhost:9033/admin/info/categories
// "comments" => http://localhost:9033/admin/info/comments
// "data_statistics" => http://localhost:9033/admin/info/data_statistics
// "feedbacks" => http://localhost:9033/admin/info/feedbacks
// "friendly_links" => http://localhost:9033/admin/info/friendly_links
// "groups" => http://localhost:9033/admin/info/groups
// "notifications" => http://localhost:9033/admin/info/notifications
// "reports" => http://localhost:9033/admin/info/reports
// "reputation_logs" => http://localhost:9033/admin/info/reputation_logs
// "tags" => http://localhost:9033/admin/info/tags
// "topics" => http://localhost:9033/admin/info/topics
// "users" => http://localhost:9033/admin/info/users
//
// "followers" => http://localhost:9033/admin/info/followers
//
// example end
//
var Generators = map[string]table.Generator{

	"articles":        GetArticlesTable,
	"categories":      GetCategoriesTable,
	"comments":        GetCommentsTable,
	"data_statistics": GetDataStatisticsTable,
	"feedbacks":       GetFeedbacksTable,
	"friendly_links":  GetFriendlyLinksTable,
	"groups":          GetGroupsTable,
	"notifications":   GetNotificationsTable,
	"reports":         GetReportsTable,
	"reputation_logs": GetReputationLogsTable,
	"tags":            GetTagsTable,
	"topics":          GetTopicsTable,
	"users":           GetUsersTable,

	"followers": GetFollowersTable,

	// generators end
}
