vim.opt.background = "dark"
local scheme = "oxocarbon"
local ok, _ = pcall(vim.cmd, "colorscheme " .. scheme)
if not ok then
    vim.cmd [[ colorscheme slate ]]
    return
end
