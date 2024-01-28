vim.wo.conceallevel = 2

vim.keymap.set(
    "n",
    "<leader>mt",
    function ()
        vim.g.start_markdown_preview = not vim.g.start_markdown_preview
        if vim.g.start_markdown_preview then
            vim.api.nvim_exec_autocmds("BufEnter", { group = "MarkdownPreviewGrp" })
        -- else
        --     vim.cmd [[MarkdownPreviewStop]]
        end
    end,
    { buffer = 0, desc = "[M]arkdown preview [T]oggle on/off" }
)

local function insert_link()
    local opts = {
        attach_mappings = function(_, map)
            map("i", "<CR>", function(prompt_bufnr)
                -- filename is available at entry[1]
                local entry = require("telescope.actions.state").get_selected_entry()
                require("telescope.actions").close(prompt_bufnr)
                local result = entry[1]
                local filename = string.sub(result, 1, string.find(result, ":") - 1)
                -- Insert filename in current cursor position
                vim.cmd("normal i" .. "[]" .. "(" .. filename .. ")")
                vim.cmd("normal F]li")
            end)
            return true
        end,
    }
    require("telescope.builtin").live_grep(opts)
end

vim.keymap.set("n", "<leader>ml", insert_link, { desc = "Insert [M]arkdown [L]ink" })
