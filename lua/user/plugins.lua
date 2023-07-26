-- Additional Plugins
lvim.plugins = {
  "gpanders/editorconfig.nvim",
  "sainnhe/gruvbox-material",
  "folke/tokyonight.nvim",
  "fatih/vim-go",
  "olexsmir/gopher.nvim",
  "j-hui/fidget.nvim",
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    -- optionally, override the default options:
    config = function()
      require("tailwindcss-colorizer-cmp").setup {
        color_square_width = 2,
      }
    end,
  },
  "lvimuser/lsp-inlayhints.nvim",
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  "jose-elias-alvarez/typescript.nvim",
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end,
  },
  "mxsdev/nvim-dap-vscode-js",
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  "simrat39/rust-tools.nvim",
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
        popup = {
          border = "rounded",
        },
      }
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    -- cmd = "Copilot",
    event = "InsertEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  "monaqa/dial.nvim",
  -- "MunifTanjim/nui.nvim",
  -- "jackMort/ChatGPT.nvim",
  -- "Bryley/neoai.nvim"

  'mbbill/undotree',
  "rebelot/kanagawa.nvim",
  { "bennypowers/nvim-regexplainer", ft = { "html", "javascript", "javascriptreact", "typescript", "typescriptreact" }},
  { "nvim-treesitter/nvim-treesitter", dependencies = { "HiPhish/nvim-ts-rainbow2" }, opts = { rainbow = { enable = true } } },
  { "nvim-treesitter/nvim-treesitter-refactor", after = "nvim-treesitter", dependencies = "nvim-treesitter/nvim-treesitter" },
  { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter", dependencies = "nvim-treesitter/nvim-treesitter" },
  { "ThePrimeagen/refactoring.nvim", dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" } },
  { "m4xshen/smartcolumn.nvim", opts = { colorcolumn = 120, disabled_filetypes = { "help" } } },
  { "johmsalas/text-case.nvim" },
  { "zbirenbaum/neodim",
    event = "LspAttach",
    opts = {
      alpha = 0.75,
      blend_color = "#000000",
      update_in_insert = {
        enable = true,
        delay = 100,
      },
    hide = {
      virtual_text = true,
      signs = true,
      underline = true,
      }},
  },
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup() end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  },
  { "iamcco/markdown-preview.nvim", build = "cd app && npm install", ft = "markdown" },
  "m-demare/hlargs.nvim",

  "lunarvim/colorschemes",
  "NvChad/ui",
}
