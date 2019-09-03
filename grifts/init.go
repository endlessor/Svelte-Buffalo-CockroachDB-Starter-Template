package grifts

import (
	"svelte-buffalo-cockroachdb-starter-template/actions"

	"github.com/gobuffalo/buffalo"
)

func init() {
	buffalo.Grifts(actions.App())
}
