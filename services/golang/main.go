package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	router := gin.Default()

	router.GET("/", func(c *gin.Context) {
		c.String(200, "Hello World")
	})

	router.GET("/env", func(c *gin.Context) {
		c.String(200, "Hello %s", os.Getenv("NAME"))
	})

	router.Run(":" + port)
}