local M = {
  "folke/trouble.nvim",
  commit = "20d1b30d6925213abece21d35858a16e11d1e9fc",
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config()
  require("trouble").setup {
    user_diagnostic_signs = true,
  }
end

return M
