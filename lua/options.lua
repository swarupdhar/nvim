-- [[ disable netrw for nerdtree plugin ]]
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- [[ editor options ]]
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 16
vim.opt.encoding = "utf8"
vim.opt.fileencoding = "utf8"
vim.opt.syntax = "on"
vim.opt.termguicolors = true
vim.opt.guifont = "IosevkaTerm Nerd Font Mono:h14"
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.timeoutlen = 300
vim.opt.updatetime = 200
vim.opt.colorcolumn = "100"
vim.opt.textwidth = 100
vim.opt.swapfile = false
vim.opt.formatoptions = "cqj"
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.signcolumn = "yes"
vim.o.completeopt = 'menuone,noselect'


-- [[ colorscheme and looks ]]
vim.cmd [[colorscheme rose-pine]]


-- [[ Shell options ]]
if string.find(vim.loop.os_uname().sysname, "Windows") then
    vim.cmd [[set shell=pwsh.exe]]
    vim.cmd [[set shellxquote=]]
    vim.cmd [[let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command ']]
    vim.cmd [[let &shellquote   = '']]
    vim.cmd [[let &shellpipe    = '| Out-File -Encoding UTF8 %s']]
    vim.cmd [[let &shellredir   = '| Out-File -Encoding UTF8 %s']]
elseif string.find(vim.loop.os_uname().sysname, "MINGW32") then
    vim.cmd [[set shell=bash]]
    vim.cmd [[let &shellcmdflag = '-c']]
    vim.cmd [[set shellxquote=]]
end

