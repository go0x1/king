package admin

import "github.com/GoAdminGroup/go-admin/plugins/admin/modules/table"

// The key of Generators is the prefix of table info url.
// The corresponding value is the Form and Table data.
//
// http://{{config.Domain}}:{{Port}}/{{config.Prefix}}/info/{{key}}
//
// example:
//
// "tags" => http://localhost:9033/admin/info/tags
//
// example end
//
var Generators = map[string]table.Generator{
	"tags": GetTagsTable,

	// generators end
}
