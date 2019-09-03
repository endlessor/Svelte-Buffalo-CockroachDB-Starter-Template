package main

import (
	"log"

	"svelte-buffalo-cockroachdb-starter-template/actions"
)

func main() {
	app := actions.App()
	log.Fatal(app.Serve())
}
