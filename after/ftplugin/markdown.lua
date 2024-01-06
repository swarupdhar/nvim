vim.wo.conceallevel = 2

vim.keymap.set(
    "n",
    "<leader>ms",
    function ()
        vim.g.start_markdown_preview = true
    end,
    { buffer = 0, desc = "[M]arkdown preview [S]tart" }
)

