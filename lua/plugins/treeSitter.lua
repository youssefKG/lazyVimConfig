return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.install").prefer_git = false
    require("nvim-treesitter.configs").setup({
      prefer_git = true,
      ensure_installed = {
        "vim",
        "vimdoc",
        "bash",
        "c",
        "cpp",
        "javascript",
        "json",
        "lua",
        "python",
        "typescript",
        "tsx",
        "css",
        "rust",
        "markdown",
        "markdown_inline",
      },
      highlight = { enable = true },
      indent = { enable = true },

      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },
    })
  end,
}
