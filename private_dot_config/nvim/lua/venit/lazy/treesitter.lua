return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()

    require("nvim-treesitter").install({ "lua", "javascript" })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua", "javascript" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
