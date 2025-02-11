package main

import (
	"log"
	"github.com/gin-gonic/gin"
	"github.com/trigg3rX/triggerx-othentic/avs/Execution_Service/services"  
	"github.com/trigg3rX/triggerx-othentic/avs/Execution_Service/handlers" 
)

func main() {
	services.Init()
	router := gin.Default()
	router.POST("/task/execute", handlers.ExecuteTask)
	log.Println("Server starting on :4003")

	if err := router.Run(":4003"); err != nil {
		log.Fatal(err)
	}
}
