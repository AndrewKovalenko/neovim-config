-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', { command = 'source <afile> | PackerCompile', group = packer_group, pattern = 'init.lua' })

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Package manager
	use 'tpope/vim-fugitive' -- Git commands in nvim
	use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
	use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
	use 'ludovicchabant/vim-gutentags' -- Automatic tags management
	use 'airblade/vim-rooter'
	-- UI to select things (files, grep results, open buffers...)
	use { 'nvim-telescope/telescope.nvim', requires = { 
		'nvim-lua/plenary.nvim', 
		'BurntSushi/ripgrep', 
		'sharkdp/fd' 
	} 
	}
	use { 'junegunn/fzf', run = './install --all' }
	use 'junegunn/fzf.vim'
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'mjlbach/onedark.nvim' -- Theme inspired by Atom
	use 'nvim-lualine/lualine.nvim' -- Fancier statusline
	use 'preservim/nerdtree' -- Side panel
	use 'jlanzarotta/bufexplorer' -- Buffer management UI
	-- Highlight, edit, and navigate code using a fast incremental parsing library
	use { 'nvim-treesitter/nvim-treesitter', run= ':TSUpdate' } -- Syntax highlight 
	-- Add indentation guides even on blank lines
	use 'lukas-reineke/indent-blankline.nvim'
	-- Add git related info in the signs columns and popups
	use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	-- Additional textobjects for treesitter
	use 'nvim-treesitter/nvim-treesitter-textobjects'
	use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
	-- Language server
	use { 'Shougo/deoplete.nvim',  run = ':UpdateRemotePlugins' }
	use 'jose-elias-alvarez/null-ls.nvim'
	use { 'ternjs/tern_for_vim', run = 'npm install && npm install -g tern' }
	use 'carlitux/deoplete-ternjs'
	use 'jose-elias-alvarez/nvim-lsp-ts-utils'
	use 'prabirshrestha/asyncomplete.vim'
	use 'prabirshrestha/asyncomplete-lsp.vim'

	use 'dense-analysis/ale' -- Syntax checker
	use 'pangloss/vim-javascript'
	use { 'numirias/semshi', run = ':UpdateRemotePlugins' }

	use 'othree/html5.vim'
	use 'evanleck/vim-svelte'
	-- Golang specific packages
	use {'fatih/vim-go', run = ':GoInstallBinaries' }
	-- Rust specific packages
	use 'williamboman/mason.nvim'    
	use 'williamboman/mason-lspconfig.nvim'
	use 'simrat39/rust-tools.nvim'

	-- Autocomplete setup
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	-- For vsnip users.
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'

	-- Html syntax
	use 'windwp/nvim-ts-autotag'
	use 'nvim-lua/lsp-status.nvim'
	use 'puremourning/vimspector'
	-- For luasnip users.
	-- Plug 'L3MON4D3/LuaSnip'
	-- Plug 'saadparwaiz1/cmp_luasnip'

	-- For ultisnips users.
	-- Plug 'SirVer/ultisnips'
	-- Plug 'quangnguyen30192/cmp-nvim-ultisnips'

	-- For snippy users.
	-- Plug 'dcampos/nvim-snippy'
	-- Plug 'dcampos/cmp-snippy'

end)

require('install-plugins.cmp-setup')
