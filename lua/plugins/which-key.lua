return { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter",
    config = function()
      require("which-key").setup()

      require("which-key").register {
        ["<leader>f"] = { name = "[F]ile", _ = "which_key_ignore" },
        ["<leader>q"] = { name = "[Q]uit", _ = "which_key_ignore" },
        -- ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
        -- ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
        -- ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
        ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
        -- ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
        -- ["<leader>t"] = { name = "[T]oggle", _ = "which_key_ignore" },
        -- ["<leader>h"] = { name = "Git [H]unk", _ = "which_key_ignore" },
      }

      require("which-key").register({
          ["<leader>h"] = { "Git [H]unk" },
      }, { mode = "v" })
    end,
}
