package tree_sitter_vktl_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_vktl "github.com/razmser/tree-sitter-vktl/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_vktl.Language())
	if language == nil {
		t.Errorf("Error loading VKTL grammar")
	}
}
