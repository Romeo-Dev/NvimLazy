return {
  {
    "nvim-treesitter/nvim-treesitter", build= ":TSUpdate",
    config= function()
      require("nvim-treesitter.configs").setup({
          ensure_installed = { "php", "html", "javascript", "css" },
          highlight = { enable = true },
      })
    end
  },
}
