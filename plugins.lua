local plugins = {
  {"mhinz/vim-startify", lazy=false,},
  {"dhruvasagar/vim-table-mode", lazy=false,},
  {
    "nvim-neorg/neorg",
    lazy = false,
    build = ":Neorg sync-parsers",
    -- tag = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()

      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                work = "~/Dropbox/simplenotes/work",
                personal = "~/Dropbox/simplenotes/personal",
              },
              open_last_workspace = true, 
            },
          },
        },
      }
    end,
  },
}

return plugins
