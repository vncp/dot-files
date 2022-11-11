local status, zenmode = pcall(require, "zen-mode")
if (not status) then return end

zenmode.setup {
}

vim.keymap.set('n', '<C-w>O', '<cmd>Zenmode<cr>', { silent = true })
