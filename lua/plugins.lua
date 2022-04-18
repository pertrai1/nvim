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
-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_setup(name)
  return string.format('require("setup/%s")', name)
end

return require("packer").startup(
  function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Language settings
    use 'pangloss/vim-javascript'
    use 'leafgarland/typescript-vim'
    use 'editorconfig/editorconfig-vim'

    -- Colors
    use 'projekt0n/github-nvim-theme'

    -- Visual
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'tomasiser/vim-code-dark'
    use 'akinsho/bufferline.nvim'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
    }
    use 'mhinz/vim-startify'
    use 'folke/which-key.nvim'
    -- use('simrat39/symbols-outline.nvim')
    use { 'norcalli/nvim-colorizer.lua', branch = 'color-editor' }

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- Collection of configurations for the built-in LSP client
    use {
      'neovim/nvim-lspconfig',
      requires = {
        'williamboman/nvim-lsp-installer',
        'onsails/lspkind-nvim'
      }
    }
    use 'creativenull/diagnosticls-configs-nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
      'jose-elias-alvarez/null-ls.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
    }

    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'windwp/nvim-autopairs'
    use 'mhartington/formatter.nvim'
    use 'HerringtonDarkholme/yats.vim'
    use 'maxmellon/vim-jsx-pretty'
    
    -- Tag viewer
    use 'preservim/tagbar'

    -- Git
    use 'airblade/vim-gitgutter'
  end
)
