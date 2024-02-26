package main

import (
	"fmt"
	"os"

	"github.com/danawoodman/project-name/internal"
)

func main() {
	if err := internal.NewCmd(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}
