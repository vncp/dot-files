local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'glepnir/lspsaga.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'L3MON4D3/LuaSnip'
  use {
    'jose-elias-alvarez/null-ls.nvim',
    disable = true
  }
  use {
    'MunifTanjim/prettier.nvim',
    disable = true
  }
  use 'lukas-reineke/headlines.nvim'
  use {
    'github/copilot.vim',
    disable = true
  }
  use 'folke/which-key.nvim'
  use 'folke/trouble.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'folke/zen-mode.nvim'
  use 'folke/twilight.nvim'
  use 'tpope/vim-surround'
  use 'nvim-tree/nvim-tree.lua'
end)

vim.cmd [[colorscheme nord]]
