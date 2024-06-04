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
        "zig"
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
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" }
    }
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
  },
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
