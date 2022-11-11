local status, indentBlankline = pcall(require, "indent_blankline")
if (not status) then return end

indentBlankline.setup({
  char = "▏",
  buftype_exclude = { "terminal" },
  filetype_exclude = {
    "help",
    "packer",
    "dashboard",
    "lspinfo",
    "Trouble",
    "TelescopePrompt",
    "TelescopeResults",
    "NvimTree",
    "Outline",
    "startify",
    "dashboard",
    "log",
    "fugitive",
    "fugitiveblame",
    "copilot",
  },
  show_current_context = true,
  show_current_context_start = true,
  context_patterns = {
    "class",
    "function",
    "method",
    "^if",
    "^while",
    "jsx_element",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
    "if_statement",
    "else_clause",
    "jsx_element",
    "jsx_self_closing_element",
    "try_statement",
    "catch_clause",
    "import_statement",
    "operation_type",
  },
})