local M = {
  "williamboman/mason.nvim",
  tag="v1.7.0",
  --commit = "4546dec8b56bc56bc1d81e717e4a935bc7cd6477",
  cmd = "Mason",
  event = "BufReadPre",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      tag="v1.14.0",
      --commit = "93e58e100f37ef4fb0f897deeed20599dae9d128",
    },
  },
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.DEBUG,
  max_concurrent_installers = 4,
}

function M.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup {
    ensure_installed = require("utils").servers,
    automatic_installation = true,
  }

  local lsp = require('lsp-zero').preset({})
  lsp.skip_server_setup({'jdtls'})

  lsp.setup()
end

return M
