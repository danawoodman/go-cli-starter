package main

import (
	"log"

	"github.com/danawoodman/project-name/internal"
)

func main() {
	if err := internal.NewCmd(); err != nil {
		log.Fatal("cli failed to start:", err)
	}
}
