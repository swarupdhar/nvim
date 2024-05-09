vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>fs", [[<cmd>w<cr>]], { desc = "[F]ile [S]ave " })
vim.keymap.set("n", "<leader>fe", [[<cmd>Lexplore<cr>]], { desc = "[F]ile [E]xplorer" })
vim.keymap.set("n", "<leader>qq", [[<cmd>q!<cr>]], { desc = "[Q]uit!" })

-- [[ Editing shortcuts ]]
vim.keymap.set("n", "k", [[v:count == 0 ? "gk" : "k"]], { expr = true, silent = true })
vim.keymap.set("n", "j", [[v:count == 0 ? "gj" : "j"]], { expr = true, silent = true })
vim.keymap.set("x", "J", [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })
vim.keymap.set("x", "K", [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })

-- [[ Window shortcuts ]]
vim.keymap.set("n", "<leader>\\", [[<C-w>v]], { desc = "Split vertically" })
vim.keymap.set("n", "<leader>-", [[<C-w>s]], { desc = "Split horizontally" })
vim.keymap.set("n", "<A-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<A-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<A-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<A-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- [[ Buffer shortcuts ]]
vim.keymap.set("n", "<leader>`", [[<cmd>b#<cr>]], { desc = "Switch to previous buffer" })

-- [[ Adding shortcuts for lazy plugins to wake them ]]
vim.keymap.set("n", "<leader>sn", [[<cmd>ObsidianSearch<cr>]], { desc = "[S]earch [N]otes" })
