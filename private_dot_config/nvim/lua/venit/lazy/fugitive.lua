return {
    "tpope/vim-fugitive",
    config = function()
        -- Optional: Set a shortcut key to toggle Undotree
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git )
    end
}

