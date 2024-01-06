-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

-- [[ Auto start markdown preview ]]
vim.g.start_markdown_preview = false
local MarkdownPreviewGrp = vim.api.nvim_create_augroup('MarkdownPreviewGrp', { clear = true })
vim.api.nvim_create_autocmd('BufEnter', {
    callback = function()
        if vim.g.start_markdown_preview then
            vim.cmd [[MarkdownPreview]]
        end
    end,
    group = MarkdownPreviewGrp,
    pattern = '*.md',
})

