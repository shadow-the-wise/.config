local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    -- [Package Manager]

    use 'wbthomason/packer.nvim'

    -- [StatusLine]

    use {
        'nvim-lualine/lualine.nvim',
        -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- [Navigation]

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "LinArcX/telescope-command-palette.nvim" }

    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }

    --use { 'rhysd/clever-f.vim' }

    -- [Indentation]

    use { "lukas-reineke/indent-blankline.nvim" }

    --  [AutoPair]

    use {
        "windwp/nvim-autopairs",
    }

    -- [Braces]

    use { 'frazrepo/vim-rainbow' }

    -- [ColorScheme]

    use {
        'arcticicestudio/nord-vim',
    }

    -- [Git]

    use { 'airblade/vim-gitgutter' }

    use { 'tpope/vim-fugitive' }

    -- [Complition]

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins

    -- [LSP]

    use {

        -- Portable package manager for Neovim
        -- Easily install and manage LSP servers, DAP servers, linters, and formatters.

        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    }

    use {
        -- Quickstart configs for Nvim LSP

        'neovim/nvim-lspconfig',

        -- Neovim doesn't provide a way for non-LSP sources to hook into its LSP
        -- client. null-ls is an attempt to bridge that gap and simplify the
        -- process of creating, sharing, and setting up LSP sources using pure Lua.

        -- null-ls is also an attempt to reduce the boilerplate required to set
        -- up general-purpose language servers and improve performance by
        -- removing the need for external processes.

        'jose-elias-alvarez/null-ls.nvim'
    }

    use {
        -- Autocompletion

        'hrsh7th/nvim-cmp',

        -- luasnip completion source for nvim-cmp

        'saadparwaiz1/cmp_luasnip',

        -- source for neovims builtin lsp client

        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp-document-symbol',
        'hrsh7th/cmp-nvim-lsp-signature-help'
    }


    use {
        -- Snippet Engine

        "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*",

        -- Snippets

        'rafamadriz/friendly-snippets',
    }

    use 'nvim-tree/nvim-web-devicons'


    if packer_bootstrap then
        require('packer').sync()
    end
end)
