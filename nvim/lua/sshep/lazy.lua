local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(


    {
	    "folke/tokyonight.nvim",
	    lazy = false, -- make sure we load this during startup if it is your main colorscheme
	    priority = 1000, -- make sure to load this before all the other start plugins

        'numToStr/Comment.nvim',

	    'nvim-telescope/telescope.nvim', tag = '0.1.5',
	    dependencies = { 'nvim-lua/plenary.nvim' },

	    'nvim-lua/plenary.nvim',

	    "nvim-treesitter/nvim-treesitter",
	    build = ":TSUpdate",

	    'ThePrimeagen/harpoon',

	    'ThePrimeagen/git-worktree.nvim',

	    'mbbill/undotree',

	    'tpope/vim-fugitive',

	    'tpope/vim-rhubarb',

	    'lewis6991/gitsigns.nvim',

	    'nvim-lua/popup.nvim',

	    'nvim-lualine/lualine.nvim',
	    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },

	    'nvim-tree/nvim-web-devicons',

	    "folke/trouble.nvim",
	    config = function()
		    require("trouble").setup {
			    icons = true,
			    -- your configuration comes here
			    -- or leave it empty to use the default settings
			    -- refer to the configuration section below
		    }
	    end,

	    "theprimeagen/refactoring.nvim",

	    "nvim-treesitter/nvim-treesitter-context",

	    "folke/zen-mode.nvim",

	    "eandrju/cellular-automaton.nvim",

        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',

        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',

        'neovim/nvim-lspconfig',

        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',

        'L3MON4D3/LuaSnip',

    }
)

