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
  local opts_with_preview

  opts_with_preview = {
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
  local opts_without_preview

  opts_without_preview = {
    winblend = 10,
    layout_strategy = "vertical",
    layout_config = {
      width = 0.5,
      height = 0.5,
      horizontal = {
        prompt_position = "bottom",
      },
      scroll_speed = 1
    },
    previewer = false
  }

  require("telescope.builtin").find_files(opts_without_preview)
end

function M.live_grep()
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

return M
