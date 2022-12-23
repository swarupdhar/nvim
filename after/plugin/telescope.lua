local _, telescope = pcall(require, "telescope")
local ok, builtin = pcall(require, "telescope.builtin")
if not ok then
    return
end

telescope.setup {}

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>bb", builtin.buffers)
