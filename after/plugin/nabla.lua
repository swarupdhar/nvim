local ok, nabla = pcall(require, "nabla")
if not ok then
    return
end


vim.keymap.set("n", "<leader>v", nabla.popup)
