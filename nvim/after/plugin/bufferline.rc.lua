local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

local highlights = require("nord").bufferline.highlights({
  italic = true,
  bold = true
})

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'thin',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = highlights,
})
