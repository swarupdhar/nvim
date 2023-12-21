vim.keymap.set({ "n", "v" }, "<Space>", [[<Nop>]], { silent = true })


-- [[ Nice to haves ]]
vim.keymap.set("n", "k", [[v:count == 0 ? "gk" : "k"]], { expr = true, silent = true })
vim.keymap.set("n", "j", [[v:count == 0 ? "gj" : "j"]], { expr = true, silent = true })


-- [[ Editing keymaps ]]
vim.keymap.set("x", "J", [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })
vim.keymap.set("x", "K", [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })


-- [[ General neovim behavior related keymaps ]]
vim.keymap.set("n", "<leader>fs", [[<cmd>w<cr>]], { desc = "[F]ile [S]ave " })
vim.keymap.set("n", "<leader>qq", [[<cmd>q!<cr>]], { desc = "[Q]uit!" })


-- [[ Window shortcuts ]]
vim.keymap.set("n", "<leader>ww", [[<C-w>w]], { desc = "Switch window" })
vim.keymap.set("n", "<leader>qw", [[<C-w>q]], { desc = "[Q]uit [W]indow" })
vim.keymap.set("n", "<leader>\\", [[<C-w>v]], { desc = "Split vertically" })
vim.keymap.set("n", "<leader>-", [[<C-w>s]], { desc = "Split horizontally" })

vim.keymap.set("n", "<C-h>", [[<C-w>h]])
vim.keymap.set("n", "<C-l>", [[<C-w>l]])
vim.keymap.set("n", "<C-j>", [[<C-w>j]])
vim.keymap.set("n", "<C-k>", [[<C-w>k]])


-- [[ Buffer shortcuts ]]
vim.keymap.set("n", "<leader>bs", [[<cmd>b#<cr>]], { desc = "[B]uffer [S]witch" })

