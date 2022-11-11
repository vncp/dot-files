local status, nvimtree = pcall(require, "nvim-tree")
if (not status) then return end

nvimtree.setup({
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true,
  }
})
