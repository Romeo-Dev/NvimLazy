return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000,
   config = function()
      require("catppuccin").setup({
        flavour = "frappe",
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
  
  {"nvim-treesitter/nvim-treesitter", build= ":TSUpdate"},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "javascript", "css", "php", "python", "sql", "typescript"},
        highlight = { enable = true },
        indent = { enable = true }
      })
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup()
    end
  }
}
