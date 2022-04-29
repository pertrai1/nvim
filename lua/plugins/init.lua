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

return require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use 'lewis6991/impatient.nvim'

    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "ray-x/lsp_signature.nvim"
    use "jose-elias-alvarez/nvim-lsp-ts-utils"

    use "stevearc/dressing.nvim"

    use "kyazdani42/nvim-web-devicons"

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        after = { "nvim-web-devicons" },
    }

    use {
        "windwp/nvim-spectre",
        requires = {
            "nvim-lua/plenary.nvim"
        },
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            -- { "andersevenrud/compe-tmux" },
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
        config = "require 'plugins.nvim-cmp'",
    }
    use {
        "L3MON4D3/LuaSnip",
        config = "require 'plugins.lua-snip'",
    }

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = "require 'plugins.nvim-treesitter'",
    }
    -- use "nvim-treesitter/playground"
    use "nvim-treesitter/nvim-treesitter-refactor"
    use "nvim-treesitter/nvim-treesitter-textobjects"
    use "RRethy/nvim-treesitter-textsubjects"
    use "JoosepAlviste/nvim-ts-context-commentstring"
    use "David-Kunz/treesitter-unit"
    use "windwp/nvim-ts-autotag"
    use "spywhere/detect-language.nvim"

    use {
        "lukas-reineke/lsp-format.nvim",
        config = "require 'plugins.lsp-format'",
    }

    use {
        'j-hui/fidget.nvim',
        config = "require 'plugins.fidget'"
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                auto_fold = true,
            }
        end
    }

    use {
        "folke/which-key.nvim",
    }

    -- use "overcache/NeoSolarized"
    -- use {
    -- "akinsho/org-bullets.nvim",
    --  config = "require 'plugins.org-bullets'",
    -- }

    use {
        "dhruvasagar/vim-table-mode",
        config = "require 'plugins.vim-table-mode'",
    }

    use {
        "navarasu/onedark.nvim",
        -- "mjlbach/onedark.nvim",
        config = "require 'plugins.onedark'",
    }
    use 'feline-nvim/feline.nvim'
    use {
        "akinsho/bufferline.nvim",
        config = "require 'plugins.bufferline'"
    }
    use {
        "lukas-reineke/headlines.nvim",
        config = "require 'plugins.headlines'",
    }
    use {
        "lukas-reineke/virt-column.nvim",
        config = "require 'plugins.virt-column'",
    }
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = "require 'plugins.indent-blankline'",
    }

    use {
        "ibhagwan/fzf-lua",
        requires = {
            'kyazdani42/nvim-web-devicons'
        }
    }

    use "tpope/vim-fugitive"
    use "tpope/vim-rhubarb"
    use "tpope/vim-repeat"
    use "tpope/vim-eunuch"
    use "tpope/vim-obsession"
    use "tpope/vim-sleuth"

    use {
        "numToStr/Comment.nvim",
        config = "require 'plugins.comment'",
    }

    use {
        "rmagatti/auto-session",
        config = "require 'plugins.auto-session'",
    }

    use "krisajenkins/vim-projectlocal"

    use {
        "airblade/vim-gitgutter",
        config = "require 'plugins.vim-gitgutter'",
    }

    use 'kdheepak/lazygit.nvim'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use {
        "numToStr/Navigator.nvim",
        config = "require 'plugins.navigator'",
    }

    use {
        "akinsho/toggleterm.nvim",
        config = "require 'plugins.toggleterm'"
    }

    use {
        "SirVer/ultisnips",
        config = "require 'plugins.ultisnips'",
    }

    use {
        "cohama/lexima.vim",
        config = "require 'plugins.lexima'",
    }

    use "michaeljsmith/vim-indent-object"
    use "wellle/targets.vim"

    use "vim-scripts/UnconditionalPaste"

    use {
        "haya14busa/incsearch.vim",
        config = "require 'plugins.incsearch'",
    }
    use "vim-scripts/CmdlineComplete"

    use {
        "mileszs/ack.vim",
        config = "require 'plugins.ack'",
    }

    use {
        "romainl/vim-qf",
        config = "require 'plugins.vim-qf'",
    }
    use {
        "kevinhwang91/nvim-bqf",
        config = "require 'plugins.nvim-bqf'",
    }
    use { "kevinhwang91/rnvimr" }
    use {
        "https://gitlab.com/yorickpeterse/nvim-pqf.git",
        config = "require 'plugins.nvim-pqf'",
    }

    use "machakann/vim-sandwich"

    use "bounceme/poppy.vim"

    use "bkad/camelcasemotion"

    use "vim-scripts/ReplaceWithRegister"
    use "vim-scripts/ReplaceWithSameIndentRegister"

    use "arthurxavierx/vim-caser"

    use "z1mm32m4n/vim-superman"

    use {
        "rhysd/clever-f.vim",
        config = "require 'plugins.clever-f'",
    }
    use "kepbod/quick-scope"
    use "ggandor/lightspeed.nvim"

    use {
        "AndrewRadev/splitjoin.vim",
        config = "require 'plugins.splitjoin'",
    }

    use {
        "kshenoy/vim-signature",
        config = "require 'plugins.vim-signature'",
    }

    use "kana/vim-niceblock"

    use {
        "tyru/open-browser.vim",
        config = "require 'plugins.open-browser'",
    }

    use "jparise/vim-graphql"

    use "milisims/nvim-luaref"

    use {
        "rcarriga/vim-ultest",
        config = "require 'plugins.vim-ultest'",
        requires = { "vim-test/vim-test" },
        run = ":UpdateRemotePlugins"
    }
end
)
