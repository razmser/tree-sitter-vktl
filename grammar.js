/**
 * @file Parser for TL language https://github.com/VKCOM/tl
 * @author Sergei Razmetov <razmser@gmail.com>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "vktl",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
