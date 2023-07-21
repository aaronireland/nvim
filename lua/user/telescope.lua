local M = {
  "nvim-telescope/telescope.nvim",
  commit = "40c31fdde93bcd85aeb3447bb3e2a3208395a868",
  lazy = false,
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
  },
}

local actions = require "telescope.actions"

M.opts = {
  pickers = {
    find_files = {
      hidden = true
    }
  },
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    find_files  = { hidden = true },
    file_ignore_patterns = { "^.git/", "node_modules" },

    mappings = {
      i = {
        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },
}

function M.config()
  local status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    return
  end

  telescope.load_extension("live_grep_args")
end

return M

