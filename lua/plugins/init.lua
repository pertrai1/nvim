vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
end
vim.api.nvim_command("packadd packer.nvim")

require("packer").init({
    max_jobs = 60
})

return require("packer").startup({ function()
    use "wbthomason/packer.nvim"
    use "lewis6991/impatient.nvim"
    use "nvim-lua/plenary.nvim"

    -- GUI
    -- Neovim plugin to improve the default vim.ui interfaces
    use "stevearc/dressing.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "rcarriga/nvim-notify"
    use "folke/tokyonight.nvim"
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        config = function()
            require('nvim-tree').setup()
        end,
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use "akinsho/bufferline.nvim"

    use "tami5/sqlite.lua"

    -- UI to select things (files, grep results, open buffers...)
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use "nvim-telescope/telescope-file-browser.nvim"
    use "nvim-telescope/telescope-frecency.nvim"

    -- Completion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-cmdline" },
            { "lukas-reineke/cmp-under-comparator" },
            { "lukas-reineke/cmp-rg" },
            { "octaltree/cmp-look" },
        },
    }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "nvim-treesitter/nvim-treesitter-refactor"
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "RRethy/nvim-treesitter-textsubjects"
    use {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require("treesitter-context").setup({
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                throttle = true, -- Throttles plugin updates (may improve performance)
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
                    -- For all filetypes
                    -- Note that setting an entry here replaces all other patterns for this entry.
                    -- By setting the 'default' entry below, you can control which nodes you want to
                    -- appear in the context window.
                    default = {
                        "function",
                        "method",
                        "for",
                        "while",
                        "if",
                        "switch",
                        "case",
                    },

                    rust = {
                        "loop_expression",
                        "impl_item",
                    },

                    typescript = {
                        "class_declaration",
                        "abstract_class_declaration",
                        "else_clause",
                    },
                },
            })
        end
    }
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use "David-Kunz/treesitter-unit"
    use "windwp/nvim-ts-autotag"

    use "spywhere/detect-language.nvim"
    use "simrat39/symbols-outline.nvim"

    use {
        "folke/which-key.nvim",
    }

    use { "akinsho/toggleterm.nvim",
        tag = 'v2.*',
    }
    -- fZF
    use "ibhagwan/fzf-lua"

    -- Git
    use "airblade/vim-gitgutter"
    use "lewis6991/gitsigns.nvim"
    use "tpope/vim-fugitive"
    use "tpope/vim-rhubarb"
    use "tpope/vim-repeat"
    use "tpope/vim-eunuch"
    use "tpope/vim-obsession"
    use "tpope/vim-sleuth"

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "ray-x/lsp_signature.nvim"
    use "jose-elias-alvarez/nvim-lsp-ts-utils"

    use "lukas-reineke/lsp-format.nvim"
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                auto_fold = true,
            }
        end
    }

    -- Language
    use "L3MON4D3/LuaSnip"
    use "SirVer/ultisnips"

    -- Helpers
    use "dhruvasagar/vim-table-mode"
    use "feline-nvim/feline.nvim"
    use "lukas-reineke/headlines.nvim"
    use "lukas-reineke/virt-column.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "numToStr/Comment.nvim"

    use "rmagatti/auto-session"
    use {
        "rmagatti/session-lens",
        requires = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
        config = function()
            require('session-lens').setup()
        end
    }

    use "numToStr/Navigator.nvim"
    use "cohama/lexima.vim"

    use "michaeljsmith/vim-indent-object"
    use "wellle/targets.vim"

    use "vim-scripts/UnconditionalPaste"
    use {
        "haya14busa/is.vim",
    }

    use "romainl/vim-qf"
    use "kevinhwang91/nvim-bqf"
    use "https://gitlab.com/yorickpeterse/nvim-pqf.git"

    use "bounceme/poppy.vim"

    use "bkad/camelcasemotion"

    use "vim-scripts/ReplaceWithRegister"
    use "vim-scripts/ReplaceWithSameIndentRegister"

    use "arthurxavierx/vim-caser"

    use "rhysd/clever-f.vim"
    use "kepbod/quick-scope"
    use "ggandor/lightspeed.nvim"
    use {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
    }
    use "AndrewRadev/splitjoin.vim"

    use "kshenoy/vim-signature"

    use "kana/vim-niceblock"

    use "mbbill/undotree"
end,
    config = {
        display = {
            open_fn = require('packer.util').float,
        }
    }
})
