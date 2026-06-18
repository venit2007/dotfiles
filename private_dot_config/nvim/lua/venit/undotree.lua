return {
    "mbbill/undotree",
    config = function()
        -- Optional: Set a shortcut key to toggle Undotree
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
    end
}
