vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        'folke/zen-mode.nvim'
    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = true,
            }
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use("nvim-treesitter/nvim-treesitter-context");

    use('theprimeagen/harpoon')
    use("theprimeagen/refactoring.nvim")

    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use("laytan/cloak.nvim")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        'mfussenegger/nvim-dap',
    }

    use {
        "theHamsta/nvim-dap-virtual-text",
        requires = {
            'mfussenegger/nvim-dap',
        }
    }

    use {
        "rcarriga/nvim-dap-ui",
        requires = {
            'mfussenegger/nvim-dap',
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)
