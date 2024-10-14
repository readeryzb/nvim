return {
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", -- 自动更新解析器
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim" }, -- 仅安装 Lua 和 Vim 的解析器
        highlight = { enable = true }, -- 启用语法高亮
      })
    end,
  },
}

