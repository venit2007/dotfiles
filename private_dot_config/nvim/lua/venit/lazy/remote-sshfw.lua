return {
  "nosduco/remote-sshfs.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  opts = {},
  config= function()
    require('telescope').load_extension 'remote-sshfs'
  end
}
