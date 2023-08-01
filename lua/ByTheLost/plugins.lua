local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim', -- Theme
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'windwp/nvim-autopairs' -- Autopairs
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-tree/nvim-web-devicons' -- Icons
  use "lukas-reineke/indent-blankline.nvim" -- Indent
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'xiyaowong/transparent.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use { 
    'gen740/SmoothCursor.nvim',
    config = function()
    require('smoothcursor').setup()
    end
  }
  use 'lewis6991/gitsigns.nvim'
end)
