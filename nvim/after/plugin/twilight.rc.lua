local status, twilight = pcall(require, "twilight")
if (not status) then return end

twilight.setup {
}

vim.keymap.set('n', '<C-w>o', '<cmd>Twilight<cr>', { silent = true })
