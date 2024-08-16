return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        plugins = {
          spelling = {
            enabled = true,
            suggestions = 20,
          },
        },
        icons = {
          breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
          separator = "➜", -- symbol used between a key and it's label
          group = "+", -- symbol prepended to a group
        },
        window = {
          border = "none", -- none, single, double, shadow
          position = "bottom", -- bottom, top
          margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
          padding = {2, 2, 2, 2}, -- extra window padding [top, right, bottom, left]
        },
        layout = {
          height = {min = 4, max = 25}, -- min and max height of the columns
          width = {min = 20, max = 50}, -- min and max width of the columns
          spacing = 3, -- spacing between columns
          align = "left", -- align columns left, center or right
        },
        ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
        hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide these mappings if no label is provided
        show_help = true, -- show help message on the command line when the popup is visible
      }
    end,
  }
}

