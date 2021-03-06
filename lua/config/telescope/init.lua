local themes = require "telescope.themes"
local M = {}

function M.find_files_no_previewer()
  local opts_without_preview

  opts_without_preview = {
    layout_config = {
      width = 0.99,
      height = 0.99,
      horizontal = {
        prompt_position = "bottom",
      },
      scroll_speed = 1
    },
    previewer = false
  }

  require("telescope.builtin").find_files(opts_without_preview)
end

function M.find_files()
  local opts_with_preview = themes.get_dropdown {
    winblend = 10,
    layout_strategy = "flex",
    layout_config = {
      width = 0.99,
      height = 0.99,

      horizontal = {
        preview_width = 0.75,
      },
      vertical = {
        preview_height = 0.75,
      },

      scroll_speed = 1,
    },
  }

  require("telescope.builtin").find_files(opts_with_preview)
end

function M.find_files_quickly()
  local opts_without_preview = themes.get_dropdown {
    winblend = 10,
    layout_strategy = "vertical",
    layout_config = {
      width = 0.5,
      height = 0.7,
      horizontal = {
        prompt_position = "top",
      },
      scroll_speed = 1
    },
    previewer = false
  }

  require("telescope.builtin").find_files(opts_without_preview)
end

function M.git_files()
  local opts_with_preview = {
    winblend = 20,
    layout_config = {
      width = 0.99,
      height = 0.99,
      horizontal = {
        prompt_position = "bottom",
      },
      scroll_speed = 1
    },
  }

  require("telescope.builtin").git_files(opts_with_preview)
end

function M.live_grep()
  local opts_with_preview

  opts_with_preview = {
    path_display = {},
    layout_strategy = "vertical",
    layout_config = {
      height = 0.99,
      width = 0.99,
      preview_cutoff = 1,
      preview_height = 0.7,
    },
  }
  require("telescope.builtin").live_grep(opts_with_preview)
end

function M.current_buffer_fuzzy_find()
  local opts_with_preview

  opts_with_preview = {
    layout_strategy = "vertical",
    layout_config = {
      height = 0.99,
      width = 0.99,
      preview_cutoff = 1,
      preview_height = 0.7,
    },
  }
  require('telescope.builtin').current_buffer_fuzzy_find(opts_with_preview)
end

function M.oldfiles()
  require("telescope").extensions.frecency.frecency(themes.get_ivy {})
end

function M.my_buffers()
  require('telescope.builtin').buffers(
    require('telescope.themes').get_dropdown {
      previewer = false,
      only_cwd = vim.fn.haslocaldir() == 1,
      show_all_buffers = false,
      sort_mru = true,
      ignore_current_buffer = false,
      sorter = require('telescope.sorters').get_substr_matcher(),
      selection_strategy = 'closest',
      path_display = { 'shorten' },
      layout_strategy = 'center',
      winblend = 0,
      layout_config = { width = 70 },
      color_devicons = true,
    }
  )
end

function M.leader_f()
  require("telescope.builtin").buffers({
    entry_maker = require("config.telescope.leader_f").gen_from_buffer_like_leaderf(),
    previewer = false,
    sort_lastused = true,
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
      },
    },

  })
end

return M
