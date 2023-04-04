return {
    "neovim/nvim-lspconfig",
    opts = {
        autoformat = false,
        servers = {
            jsonls = {
                mason = false,
            },
        },
    },
}
