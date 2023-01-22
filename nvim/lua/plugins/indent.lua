-- let g:indent_blankline_filetype_exclude = ['help', "checkhealth", "man", "md", "markdown", "txt", "vim"]

require('indent_blankline').setup({
  char = '▏',
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  use_treesitter = false,
  show_current_context = false
})
