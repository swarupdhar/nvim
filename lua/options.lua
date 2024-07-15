vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true
vim.opt.termguicolors = true

vim.opt.undofile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.encoding = "utf8"
vim.opt.fileencoding = "utf8"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.o.completeopt = "menuone,noselect"

vim.opt.mouse = "a"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.breakindent = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.scrolloff = 16
vim.opt.hlsearch = true
vim.opt.syntax = "on"
vim.opt.textwidth = 100
vim.opt.formatoptions = "cqj"
vim.opt.linebreak = true

vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_sort_sequence = [[[\/]$,*]]
vim.g.netrw_sizestyle = "H"
vim.g.netrw_liststyle = 3
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]()
vim.g.netrw_hide = 0
vim.g.netrw_preview = 1
vim.g.netrw_browse_split = 4
vim.g.netrw_localcopydircmd = "cp -r"
