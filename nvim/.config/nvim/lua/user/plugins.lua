local status, packer = pcall(require, 'packer')
if (not status) then
	print('Packer not installed')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(
  function(use)
    -- Themes
    use('marko-cerovac/material.nvim')
    use('wbthomason/packer.nvim')

    -- Required
    use('nvim-lua/plenary.nvim')

    -- Telescope
    use{'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use('nvim-telescope/telescope.nvim')

    -- Git
    use 'lewis6991/gitsigns.nvim'

    use('kyazdani42/nvim-web-devicons')

    -- Code completion
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use { 'L3MON4D3/LuaSnip' } -- snippets
    use 'hrsh7th/nvim-cmp' -- nvim-cmp source for neovim's built-in LSP
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer' --  nvim-cmp source for buffer words

    -- Treesitter
    use {
	    'nvim-treesitter/nvim-treesitter',
	    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- Lualine
    use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- LSP
    use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    "williamboman/nvim-lspconfig",
    }
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    -- Colors for hex, rgb.
    use 'norcalli/nvim-colorizer.lua'

    -- LSP UIs
    --use 'glepnir/lspsaga.nvim'

    -- NvimTree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Bufferline
    use('akinsho/bufferline.nvim')

    -- Vim Matchup
    use('andymass/vim-matchup')

  end)
