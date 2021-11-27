package main

import (
	"log"
	"os/exec"
)

func main() {
	cmd := exec.Command("curl -s -w '%{time_total}' -o /dev/null https://localhost:3000")
	log.Printf("Running command and waiting for it to finish...")
	err := cmd.Run()
	if err != nil {
		log.Printf("Command finished with error: %v", err)
	}
}
