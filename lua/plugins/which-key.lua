return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")
        wk.setup {}

        wk.add {
            { "<leader>f", group = "[F]ile", },
            { "<leader>s", group = "[S]earch", },
            { "<leader>l", group = "[L]SP", },
        }
    end,
}
