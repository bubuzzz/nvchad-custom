local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "gomod",
        "gowork",
        "gosum",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "terraform",
        "c",
        "zig",
        "http",
        "xml",
        "graphql"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  {"github/copilot.vim", lazy=false,},
  {"mhinz/vim-startify", lazy=false,},
  {"dhruvasagar/vim-table-mode", lazy=false,},
  {
    "michaelb/sniprun", lazy = false,
    branch = "master",

    build = "sh install.sh",
    config = function()
      require("sniprun").setup({
        display = {
          "TerminalWithCode", --# display results and code history in a vertical split
        },
      })
    end,
  },
  {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      ft = { "markdown" },
      build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        adaptive_size = true
      }
    }
  }
}


return plugins
