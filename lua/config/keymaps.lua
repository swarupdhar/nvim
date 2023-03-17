-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fs", ":w<cr>", { silent = true, desc = "File write" })

vim.keymap.set("n", "<leader>D", '"dd', { silent = true, desc = "Delete into d register" })
vim.keymap.set("n", "<leader>X", '"dx', { silent = true, desc = "Cut into d register" })
vim.keymap.set("x", "<leader>p", '"_dP', { silent = true, desc = "Paste into void register" })


local ok, nabla = pcall(require, "nabla")
if ok then
    vim.keymap.set("n", "<leader>np", nabla.popup, { desc = "Open nabla popup" })
    vim.keymap.set("n", "<leader>nr", nabla.enable_virt, { desc = "(Re)enable nabla virtual line rendering" })
    vim.keymap.set("n", "<leader>nd", nabla.disable_virt, { desc = "Disable nabla virtual line rendering" })
end

