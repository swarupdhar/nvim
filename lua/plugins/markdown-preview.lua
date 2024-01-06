return {
    "iamcco/markdown-preview.nvim",
    cmd = {
        "MarkdownPreviewToggle",
        "MarkdownPreview",
        "MarkdownPreviewStop"
    },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function ()
        -- Check the github repo for custom css path options 
        vim.g.mkdp_refresh_slow = 1
        vim.g.mkdp_auto_close = 0
        vim.g.mkdp_combine_preview = 1
        vim.g.mkdp_combine_preview_auto_refresh = 1 -- this isn't working maybe need an autocmd solution

        vim.g.mkdp_theme = "dark"
    end,
}
