package grifts

import (
	"github.com/bguilder/recipe_app/actions"
	"github.com/gobuffalo/buffalo"
)

func init() {
	buffalo.Grifts(actions.App())
}
