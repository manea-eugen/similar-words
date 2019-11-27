package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func main() {

	dictPath := os.Args[1]
	if dictPath == "" {
		msg := "You must specify the dictionary path as first argument"
		log.Fatal(msg)
	}
	fmt.Println(fmt.Sprintf("Goind to process .dic files in '%s'", dictPath))

	files, err := filepath.Glob(fmt.Sprintf("%s/*", dictPath))
	if err != nil {
		log.Fatal(err)
		return
	}
	fmt.Println(files) // contains a list of all files in the current directory

	fmt.Println("Done")
}
