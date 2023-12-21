return {
    "nvim-tree/nvim-tree.lua",
    keys = "<leader>e",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            view = {
                width = 35,
            }
        }

        vim.keymap.set("n", "<leader>e", [[<cmd>NvimTreeToggle<cr>]], { desc = "[E]xplorer" })
    end,
}
