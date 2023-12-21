return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        require("telescope").setup {
            defaults = {
                layout_config = {
                    vertical = {
                        prompt_position = "top",
                        width = 0.75,
                        mirror = true,
                    },
                    horizontal = {
                        prompt_position = "top",
                        width = 0.75,
                    },
                    center = {
                        width = 0.75,
                    },
                },
                sorting_strategy = "ascending",
                -- layout_strategy = "vertical",
                prompt_prefix = "   ",
                set_env = { ["COLORTERM"] = "truecolor" },
                selection_caret = " ",
            },
        }

        -- local colors = require("catppuccin.palettes").get_palette()
        -- local TelescopeColor = {
        --     TelescopeMatching = { fg = colors.rosewater },
        --     TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },
        --
        --     TelescopePromptPrefix = { bg = colors.surface0 },
        --     TelescopePromptNormal = { bg = colors.surface0 },
        --     TelescopeResultsNormal = { bg = colors.mantle },
        --     TelescopePreviewNormal = { bg = colors.mantle },
        --     TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
        --     TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
        --     TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
        --     TelescopePromptTitle = { bg = colors.rosewater, fg = colors.mantle },
        --     TelescopeResultsTitle = { fg = colors.mantle },
        --     TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
        -- }
        --
        -- for hl, col in pairs(TelescopeColor) do
        --     vim.api.nvim_set_hl(0, hl, col)
        -- end

        local themes = require("telescope.themes")
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>bb", builtin.buffers, { desc = "Find existing buffers" })
        vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "[?] Find recently opened files" })
        vim.keymap.set("n", "<leader>sg", builtin.git_files, { desc = "Search [G]it Files" })
        vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
        vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
        vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
        vim.keymap.set("n", "<leader>ss", builtin.live_grep, { desc = "[S]earch by Grep" })
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
        vim.keymap.set(
            "n",
            "<leader>/",
            function()
                builtin.current_buffer_fuzzy_find(
                    themes.get_dropdown {
                        winblend = 10,
                        previewer = false,
                    }
                )
            end,
            { desc = "[/] Fuzzily search in current buffer" }
        )
    end,
}
