vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', run=":TSUpdate"}

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- auto add close tags
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}

  -- show keybindings
  use {'folke/which-key.nvim'}

  -- theme
  use {'dracula/vim', as = 'dracula', config = "vim.cmd('colorscheme dracula')"}

  -- telescope
  use {'nvim-telescope/telescope.nvim', requires = "nvim-lua/plenary.nvim"}
  
  -- navigation tree
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  
  -- lsp config
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-vsnip'}
  use {'hrsh7th/vim-vsnip'}
  use {'onsails/lspkind-nvim'}

  use {'norcalli/nvim-colorizer.lua', config = "require'colorizer'.setup()"}

  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup {current_line_blame = true}
    end
  }

  use {'lukas-reineke/indent-blankline.nvim'}
  use {'lukas-reineke/format.nvim'}
  use {'tami5/lspsaga.nvim'}
  use {'terrortylor/nvim-comment'}
end)

