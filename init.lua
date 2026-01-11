-- [[ Options ]]
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.cmdheight = 1
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.backspace = "indent,eol,start"
vim.opt.autochdir = false
vim.opt.iskeyword:append("-")
vim.opt.path:append("**")
vim.opt.selection = "exclusive"
vim.opt.mouse = "a"
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.guicursor = "n-v-c-i:block"
vim.opt.showmode = false
vim.cmd.colorscheme [[slate]]

-- [[ Keymaps ]]
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<ESC>", [[<cmd>nohlsearch<CR>]])
vim.keymap.set("n", "n", [[nzzzv]], { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", [[Nzzzv]], { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", [[<C-d>zz]], { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", [[<C-u>zz]], { desc = "Half page up (centered)" })
vim.keymap.set({ "n", "x" }, "<leader>p", [["_dP]], { desc = "Paste without yanking" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })
vim.keymap.set("n", "<C-h>", [[<C-w>h]], { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", [[<C-w>j]], { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", [[<C-w>k]], { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", [[<C-w>l]], { desc = "Move to right window" })
vim.keymap.set("n", "<leader>\\", [[<cmd>vsplit<CR>]], { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>-", [[<cmd>split<CR>]], { desc = "Split window horizontally" })
vim.keymap.set("x", "J", [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })
vim.keymap.set("x", "K", [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })
vim.keymap.set("n", "k", [[v:count == 0 ? "gk" : "k"]], { expr = true, silent = true })
vim.keymap.set("n", "j", [[v:count == 0 ? "gj" : "j"]], { expr = true, silent = true })
vim.keymap.set("n", "<leader>`", [[<cmd>b#<cr>]], { desc = "Switch to previous buffer" })
vim.keymap.set("n", "<leader>fe", [[<cmd>Explore<CR>]], { desc = "[F]ile [E]xplore" })
vim.keymap.set("n", "<leader>fq", [[<cmd>q!<CR>]], { desc = "[F]orce [Q]uit" })

-- [[ Auto commands ]]
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", {}),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Plugins ]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath
    }
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require "lazy".setup {
    spec = {
        { "saghen/blink.cmp", version = "1.*", opts = { signature = { enabled = true }, }, },
        { "numToStr/Comment.nvim", opts = {}, },
        { "echasnovski/mini.statusline", version = "*", config = {}, },
        { "lervag/vimtex", ft = "tex", },
        {
            "lewis6991/gitsigns.nvim",
            opts = {
                signs = {
                    add = { text = "+" },
                    change = { text = "~" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                },
            },
        },
        {
            "folke/which-key.nvim",
            event = "VeryLazy",
            config = function()
                local wk = require("which-key")
                wk.setup {}
            end,
        },
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
            opts = {
                ensure_installed = {
                    "bash",
                    "c",
                    "html",
                    "lua",
                    "luadoc",
                    "markdown",
                    "vim",
                    "vimdoc"
                },
                auto_install = false,
                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                },
            },
            config = function(_, opts)
                require("nvim-treesitter.install").prefer_git = true
                require("nvim-treesitter.configs").setup(opts)
            end,
        },
        {
            "ibhagwan/fzf-lua",
            dependencies = { "nvim-tree/nvim-web-devicons" },
            opts = {},
            keys = {
                {
                    "<leader>sf",
                    function()
                        require("fzf-lua").files { previewer = false, winopts = { width = 0.60 } }
                    end,
                    desc = "[S]earch [F]iles",
                },
                {
                    "<leader>sb",
                    function()
                        require("fzf-lua").buffers { previewer = false }
                    end,
                    desc = "[S]earch [B]uffers",
                },
                {
                    "<leader>sc",
                    function()
                        require("fzf-lua").files { previewer = false, cwd = "~/.config/nvim" }
                    end,
                    desc = "[S]earch [C]onfig"
                },
                {
                    "<leader>sw",
                    function()
                        require("fzf-lua").grep_cword()
                    end,
                    desc = "[S]earch [W]ord",
                },
                {
                    "<leader>s/",
                    function()
                        require("fzf-lua").grep_curbuf()
                    end,
                    desc = "[S]earch [/] in Current Buffer",
                },
                {
                    "<leader>sg",
                    function()
                        require("fzf-lua").live_grep()
                    end,
                    desc = "[S]earch [G]rep",
                },
            },
        },
        {
            "obsidian-nvim/obsidian.nvim",
            version = "*",
            lazy = true,
            event = {
                "BufReadPre " .. vim.fn.expand "~" .. "/notes/*.md",
                "BufNewFile " .. vim.fn.expand "~" .. "/notes/*.md",
            },
            opts = {
                workspaces = {
                    {
                        name = "notes",
                        path = "~/notes",
                    },
                },
            },
        },
    },
}

