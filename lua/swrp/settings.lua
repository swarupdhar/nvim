local options = {
    number              = true,
    relativenumber      = true,
    scrolloff           = 8,
    signcolumn          = "number",
    encoding            = "utf8",
    fileencoding        = "utf8",
    syntax              = "on",
    termguicolors       = true,
    cursorline          = true,
    ignorecase          = true,
    smartcase           = true,
    smartindent         = true,
    incsearch           = true,
    hlsearch            = false,
    expandtab           = true,
    shiftwidth          = 4,
    softtabstop         = 4,
    tabstop             = 4,
    splitright          = true,
    splitbelow          = true,
    clipboard           = "unnamedplus",
    mouse               = "a",
    backup              = false,
    writebackup         = false,
    timeoutlen          = 500,
    updatetime          = 200,
    guifont             = "Hack Nerd Font Mono:h14",
    colorcolumn         = "100",
    -- textwidth           = 80,
    -- wrap                = true,
    -- linebreak           = true,
    -- whichwrap           = "<,>,h,l,[,]",
    -- formatoptions       = "qj",
    swapfile            = false,
}

local globals = {
    netrw_winsize           = 20,
    netrw_banner            = 1,
    netrw_localcopydircmd   = "cp -r",
}

for key, val in pairs(options) do
	vim.opt[key] = val
end

for key, val in pairs(globals) do
	vim.g[key] = val
end
