return {
  {
    "nvim-treesitter/nvim-treesitter", build= ":TSUpdate",
    config= function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {"lua", "html", "json", "javascript", "css", "php", "python", "sql", "typescript"},
        highlight = { enable = true },
        indent = { enable = true }
      })
    end
  },
}
