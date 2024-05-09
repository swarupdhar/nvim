return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    cmd = "ObsidianSearch",
    event = {
        "BufReadPre " .. vim.fn.expand "~" .. "/notes/**.md",
        "BufNewFile " .. vim.fn.expand "~" .. "/notes/**.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "notes",
                path = "~/notes",
            },
        },
    },
}
