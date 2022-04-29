-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/rsimpson/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/rsimpson/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/rsimpson/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/rsimpson/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/rsimpson/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  CmdlineComplete = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/CmdlineComplete",
    url = "https://github.com/vim-scripts/CmdlineComplete"
  },
  ["Comment.nvim"] = {
    config = { "require 'plugins.comment'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "require 'plugins.lua-snip'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["Navigator.nvim"] = {
    config = { "require 'plugins.navigator'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/Navigator.nvim",
    url = "https://github.com/numToStr/Navigator.nvim"
  },
  ReplaceWithRegister = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister",
    url = "https://github.com/vim-scripts/ReplaceWithRegister"
  },
  ReplaceWithSameIndentRegister = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/ReplaceWithSameIndentRegister",
    url = "https://github.com/vim-scripts/ReplaceWithSameIndentRegister"
  },
  UnconditionalPaste = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/UnconditionalPaste",
    url = "https://github.com/vim-scripts/UnconditionalPaste"
  },
  ["ack.vim"] = {
    config = { "require 'plugins.ack'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/ack.vim",
    url = "https://github.com/mileszs/ack.vim"
  },
  ["auto-session"] = {
    config = { "require 'plugins.auto-session'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufferline.nvim"] = {
    config = { "require 'plugins.bufferline'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  camelcasemotion = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/camelcasemotion",
    url = "https://github.com/bkad/camelcasemotion"
  },
  ["clever-f.vim"] = {
    config = { "require 'plugins.clever-f'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/clever-f.vim",
    url = "https://github.com/rhysd/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-rg"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-rg",
    url = "https://github.com/lukas-reineke/cmp-rg"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["detect-language.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/detect-language.nvim",
    url = "https://github.com/spywhere/detect-language.nvim"
  },
  ["dressing.nvim"] = {
    config = { "require 'plugins.dressing'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["fidget.nvim"] = {
    config = { "require 'plugins.fidget'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "https://github.com/ibhagwan/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["headlines.nvim"] = {
    config = { "require 'plugins.headlines'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["incsearch.vim"] = {
    config = { "require 'plugins.incsearch'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/incsearch.vim",
    url = "https://github.com/haya14busa/incsearch.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "require 'plugins.indent-blankline'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lexima.vim"] = {
    config = { "require 'plugins.lexima'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/lexima.vim",
    url = "https://github.com/cohama/lexima.vim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lsp-format.nvim"] = {
    config = { "require 'plugins.lsp-format'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "require 'plugins.neo-tree'" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/opt/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-bqf"] = {
    config = { "require 'plugins.nvim-bqf'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { "require 'plugins.nvim-cmp'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-luaref"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-luaref",
    url = "https://github.com/milisims/nvim-luaref"
  },
  ["nvim-pqf.git"] = {
    config = { "require 'plugins.nvim-pqf'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-pqf.git",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-spectre"] = {
    config = { "require 'plugins.spectre'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-treesitter"] = {
    config = { "require 'plugins.nvim-treesitter'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    after = { "neo-tree.nvim" },
    loaded = true,
    only_config = true
  },
  ["onedark.nvim"] = {
    config = { "require 'plugins.onedark'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["open-browser.vim"] = {
    config = { "require 'plugins.open-browser'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["poppy.vim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/poppy.vim",
    url = "https://github.com/bounceme/poppy.vim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/kepbod/quick-scope"
  },
  rnvimr = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  ["splitjoin.vim"] = {
    config = { "require 'plugins.splitjoin'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["toggleterm.nvim"] = {
    config = { "require 'plugins.toggleterm'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["treesitter-unit"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/treesitter-unit",
    url = "https://github.com/David-Kunz/treesitter-unit"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14auto_fold\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ultisnips = {
    config = { "require 'plugins.ultisnips'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-caser"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-caser",
    url = "https://github.com/arthurxavierx/vim-caser"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    config = { "require 'plugins.vim-gitgutter'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-graphql",
    url = "https://github.com/jparise/vim-graphql"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-indent-object",
    url = "https://github.com/michaeljsmith/vim-indent-object"
  },
  ["vim-niceblock"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-niceblock",
    url = "https://github.com/kana/vim-niceblock"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-obsession",
    url = "https://github.com/tpope/vim-obsession"
  },
  ["vim-projectlocal"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-projectlocal",
    url = "https://github.com/krisajenkins/vim-projectlocal"
  },
  ["vim-qf"] = {
    config = { "require 'plugins.vim-qf'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-qf",
    url = "https://github.com/romainl/vim-qf"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-sandwich",
    url = "https://github.com/machakann/vim-sandwich"
  },
  ["vim-signature"] = {
    config = { "require 'plugins.vim-signature'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-superman"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-superman",
    url = "https://github.com/z1mm32m4n/vim-superman"
  },
  ["vim-table-mode"] = {
    config = { "require 'plugins.vim-table-mode'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-ultest"] = {
    config = { "require 'plugins.vim-ultest'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/vim-ultest",
    url = "https://github.com/rcarriga/vim-ultest"
  },
  ["virt-column.nvim"] = {
    config = { "require 'plugins.virt-column'" },
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/virt-column.nvim",
    url = "https://github.com/lukas-reineke/virt-column.nvim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/rsimpson/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-bqf
time([[Config for nvim-bqf]], true)
require 'plugins.nvim-bqf'
time([[Config for nvim-bqf]], false)
-- Config for: clever-f.vim
time([[Config for clever-f.vim]], true)
require 'plugins.clever-f'
time([[Config for clever-f.vim]], false)
-- Config for: vim-gitgutter
time([[Config for vim-gitgutter]], true)
require 'plugins.vim-gitgutter'
time([[Config for vim-gitgutter]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
require 'plugins.bufferline'
time([[Config for bufferline.nvim]], false)
-- Config for: lsp-format.nvim
time([[Config for lsp-format.nvim]], true)
require 'plugins.lsp-format'
time([[Config for lsp-format.nvim]], false)
-- Config for: lexima.vim
time([[Config for lexima.vim]], true)
require 'plugins.lexima'
time([[Config for lexima.vim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
require 'plugins.ultisnips'
time([[Config for ultisnips]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require 'plugins.indent-blankline'
time([[Config for indent-blankline.nvim]], false)
-- Config for: incsearch.vim
time([[Config for incsearch.vim]], true)
require 'plugins.incsearch'
time([[Config for incsearch.vim]], false)
-- Config for: Navigator.nvim
time([[Config for Navigator.nvim]], true)
require 'plugins.navigator'
time([[Config for Navigator.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require 'plugins.lua-snip'
time([[Config for LuaSnip]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
require 'plugins.headlines'
time([[Config for headlines.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
require 'plugins.comment'
time([[Config for Comment.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
require 'plugins.toggleterm'
time([[Config for toggleterm.nvim]], false)
-- Config for: open-browser.vim
time([[Config for open-browser.vim]], true)
require 'plugins.open-browser'
time([[Config for open-browser.vim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
require 'plugins.onedark'
time([[Config for onedark.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require 'plugins.nvim-treesitter'
time([[Config for nvim-treesitter]], false)
-- Config for: virt-column.nvim
time([[Config for virt-column.nvim]], true)
require 'plugins.virt-column'
time([[Config for virt-column.nvim]], false)
-- Config for: vim-ultest
time([[Config for vim-ultest]], true)
require 'plugins.vim-ultest'
time([[Config for vim-ultest]], false)
-- Config for: vim-table-mode
time([[Config for vim-table-mode]], true)
require 'plugins.vim-table-mode'
time([[Config for vim-table-mode]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
require 'plugins.nvim-web-devicons'
time([[Config for nvim-web-devicons]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
require 'plugins.dressing'
time([[Config for dressing.nvim]], false)
-- Config for: vim-signature
time([[Config for vim-signature]], true)
require 'plugins.vim-signature'
time([[Config for vim-signature]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
require 'plugins.spectre'
time([[Config for nvim-spectre]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
require 'plugins.fidget'
time([[Config for fidget.nvim]], false)
-- Config for: auto-session
time([[Config for auto-session]], true)
require 'plugins.auto-session'
time([[Config for auto-session]], false)
-- Config for: splitjoin.vim
time([[Config for splitjoin.vim]], true)
require 'plugins.splitjoin'
time([[Config for splitjoin.vim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\14auto_fold\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-pqf.git
time([[Config for nvim-pqf.git]], true)
require 'plugins.nvim-pqf'
time([[Config for nvim-pqf.git]], false)
-- Config for: vim-qf
time([[Config for vim-qf]], true)
require 'plugins.vim-qf'
time([[Config for vim-qf]], false)
-- Config for: ack.vim
time([[Config for ack.vim]], true)
require 'plugins.ack'
time([[Config for ack.vim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require 'plugins.nvim-cmp'
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd neo-tree.nvim ]]

-- Config for: neo-tree.nvim
require 'plugins.neo-tree'

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
