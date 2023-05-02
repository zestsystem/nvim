vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { { "nvim-lua/plenary.nvim" } } })

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate",
    })
    use("nvim-treesitter/playground")
    use("ThePrimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")
    -- use("folke/tokyonight.nvim")
    use({
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end,
    })

    use({
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup({})
        end,
    })
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    --Debugger
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")
    use("lewis6991/gitsigns.nvim")

    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            --	    { "purescript-contrib/purescript-vim" },
            --	    { "FrigoEU/psc-ide-vim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })

    use("github/copilot.vim")
    use {
        'Equilibris/nx.nvim',
        requires = {
            'nvim-telescope/telescope.nvim',
        },
        config = function()
            require("nx").setup {}
        end
    }
end)
