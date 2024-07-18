-- AFTER :PackerSync run :lua ColorMyPencils() for configuring the theme.
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- theme
    -- use({
    --     'rose-pine/neovim',
    --     as = 'rose-pine',
    --     config = function()
    --         vim.cmd('colorscheme rose-pine')
    --     end
    -- })
    use {
        'projekt0n/github-nvim-theme',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('github-theme').setup({
                options = {
                    transparent = true, -- Disable setting bg (make neovim's background transparent)
                }
            })

            vim.cmd('colorscheme github_dark_default')
        end,
    }

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- harpoon
    use('ThePrimeagen/harpoon')

    -- undotree
    use('mbbill/undotree')

    -- fugitive for git
    use('tpope/vim-fugitive')

    -- mason config
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- autocomplete
    use { "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "saadparwaiz1/cmp_luasnip"
    }

    -- snipet
    use {
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets"
    }


    -- flutter Lsp config
    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    }

    -- multiline cursor like visual studio code
    use 'mg979/vim-visual-multi'

    -- Bottom statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- commenting the code stuff in any language
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'JoosepAlviste/nvim-ts-context-commentstring'
end)
