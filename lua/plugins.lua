return require('packer').startup(function()
  -- Packer can manage itself
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'ibhagwan/fzf-lua'
  use 'wbthomason/packer.nvim'
  use { 'feline-nvim/feline.nvim', config = require'plugins/feline'.setup}
  use {
	'hrsh7th/nvim-cmp', 
	requires = {'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', 'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip'},
	config = require'plugins/cmp'.config
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require'plugins/ts'.config }
	
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193),
    config = require'plugins/nvimtree'.config
}

  use {'dracula/vim', as = 'dracula', config = function() vim.cmd[[colorscheme dracula]] end}

  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
    }
  end
}

end)
