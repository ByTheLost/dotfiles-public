local status, indent = pcall(require, "indent_blankline")
if (not status) then return end

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineContextChar guifg=#586e75 gui=nocombine]]
vim.opt.list = true
vim.opt.listchars:append("space: ")
vim.opt.listchars:append("eol: ")
vim.opt.listchars:append("trail: ")

require("indent_blankline").setup {
  char = "",
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
  },
  context_char = '│',
  --context_char = '╎',
  show_current_context = true,
  show_current_context_start = false,
  show_end_of_line = true,
  indent_blankline_show_trailing_blankline_indent = false,
  filetype_exclude = {
    "help",
    "terminal",
    "dashboard",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
  },
  buftype_exclude = {"terminal"},
  show_trailing_blankline_indent = false,
}
