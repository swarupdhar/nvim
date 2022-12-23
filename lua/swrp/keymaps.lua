vim.g.mapleader = " "

local opts = { silent = true }

-- [[ EDITING ]] --
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)

vim.keymap.set("n", "<leader>D", '"dd', opts)
vim.keymap.set("n", "<leader>X", '"dx', opts)
vim.keymap.set("x", "<leader>p", '\"_dP', opts)


-- [[ <LEADER>q ]] --
vim.keymap.set("n", "<leader>qq", "<cmd>q!<cr>", opts)
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>", opts)


-- [[ <LEADER>w ]] --
vim.keymap.set("n", "<leader>w", "<C-w>", opts)


-- [[ <LEADER>f ]] --
vim.keymap.set("n", "<leader>fs", ":w<cr>", opts)
vim.keymap.set("n", "<leader>fc", "<cmd>e ~/nvim/init.lua<CR>", opts)


-- [ <LEADER>p ]] --
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")


-- [ <LEADER>b ]] --
vim.keymap.set("n", "<leader>bk", "<cmd>bd<CR>")


