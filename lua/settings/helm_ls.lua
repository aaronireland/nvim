local util = require('lspconfig.util')

return {
  settings = {
    filetypes = {"helm"},
    cmd = {"helm_ls", "serve"},
    root_dir = function(fname)
      return util.root_pattern('Chart.yaml')(fname)
    end,
  }
}
