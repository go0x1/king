package routers

import (
	"github.com/gin-gonic/gin"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
	_ "king/docs"
	"king/middleware/jwt"
	"king/routers/api"
)

// InitRouter initialize routing information
func InitRouter() *gin.Engine {
	r := gin.New()
	r.Use(gin.Logger())
	r.Use(gin.Recovery())

	r.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))

	r.POST("/auth", api.PostAuth)
	apiv1 := r.Group("/api/v1")
	apiv1.Use(jwt.JWT())
	{

	}

	return r
}
