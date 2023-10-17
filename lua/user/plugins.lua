return {
  -- My plugins here
  { "nvim-lua/plenary.nvim", lazy=false, version = "*" }, -- Useful lua functions used by lots of plugins
  { "windwp/nvim-autopairs", lazy=false, version = "*" }, -- Autopairs, integrates with both cmp and treesitter
  { "numToStr/Comment.nvim", version = "*" },
  { "akinsho/bufferline.nvim", lazy=false, version = "*" },
  { "moll/vim-bbye", version = "*" },
  { "akinsho/toggleterm.nvim", version = "*" },
  { "ahmedkhalf/project.nvim", version = "*" },
  { "lewis6991/impatient.nvim", version = "*" },
  { "lukas-reineke/indent-blankline.nvim", version = "*" },
  { "goolord/alpha-nvim", version = "*" },

  -- Colorschemes
  { "lunarvim/darkplus.nvim", version = "*" },

  -- cmp plugins
  { "hrsh7th/nvim-cmp", version = "*" }, -- The completion plugin
  { "hrsh7th/cmp-buffer", version = "*" }, -- buffer completions
  { "hrsh7th/cmp-path", version = "*" }, -- path completions
  { "saadparwaiz1/cmp_luasnip", version = "*" }, -- snippet completions
  { "hrsh7th/cmp-nvim-lsp", version = "*" },
  { "hrsh7th/cmp-nvim-lua", version = "*" },

  -- snippets
  { "L3MON4D3/LuaSnip", version = "*" }, --snippet engine
  { "rafamadriz/friendly-snippets", version = "*" }, -- a bunch of snippets to use

  -- LSP
  -- { "neovim/nvim-lspconfig", lazy=false, version="*"},
  --{ "williamboman/mason-lspconfig.nvim", lazy=false, version = "*" },
  { "RRethy/vim-illuminate", lazy=false, version = "*" },

  { "towolf/vim-helm", lazy=false, version="*"},

  -- Go
  { "fatih/vim-go", lazy=false, version="*"},

  -- Java
  { "mfussenegger/nvim-jdtls", lazy=false, version = "*"},

  -- Markdown
  { "davidgranstrom/nvim-markdown-preview", lazy=false, version = "*"},
}
