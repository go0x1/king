package main

import (
	_ "github.com/GoAdminGroup/go-admin/adapter/gin"              // 引入适配器，必须引入，如若不引入，则需要自己定义
	_ "github.com/GoAdminGroup/go-admin/modules/db/drivers/mysql" // 引入对应数据库引擎
	_ "github.com/GoAdminGroup/themes/sword"                      // 引入主题，必须引入，不然报错
	"king/pkg/logging"
	"king/pkg/util"
	"king/routers"
	"strconv"

	"github.com/GoAdminGroup/go-admin/engine"
	"github.com/GoAdminGroup/go-admin/modules/config"
	"github.com/GoAdminGroup/go-admin/modules/language"
	"github.com/GoAdminGroup/go-admin/plugins/admin"
	"github.com/gin-gonic/gin"
	datamodel "king/admin"

	"king/models"
	"king/pkg/setting"
)

func init() {
	setting.Setup()
	models.Setup()
	logging.Setup()
	util.Setup()
}

func main() {
	gin.SetMode(setting.ServerSetting.RunMode)

	routersInit := routers.InitRouter()

	eng := engine.Default()

	cfg := config.Config{
		Databases: config.DatabaseList{
			"default": {
				Host:       setting.DatabaseSetting.Host,
				Port:       setting.DatabaseSetting.Port,
				User:       setting.DatabaseSetting.User,
				Pwd:        setting.DatabaseSetting.Password,
				Name:       setting.DatabaseSetting.Name,
				MaxIdleCon: 50,
				MaxOpenCon: 150,
				Driver:     config.DriverMysql,
			},
		},
		UrlPrefix: setting.AdminSetting.AdminPrefix,
		Store: config.Store{
			Path:   setting.AppSetting.StorePath,
			Prefix: setting.AppSetting.StorePrefix,
		},
		Theme:    "sword",
		Language: language.CN,
	}

	adminPlugin := admin.NewAdmin(datamodel.Generators)

	_ = eng.AddConfig(cfg).AddPlugins(adminPlugin).Use(routersInit)

	_ = routersInit.Run(":" + strconv.Itoa(setting.ServerSetting.HttpPort))
}
