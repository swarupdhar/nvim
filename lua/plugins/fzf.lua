return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = { },
  keys = {
    {
      "<leader>sf",
      function()
        require("fzf-lua").files { previewer = false, winopts = { width = 0.60 } }
      end,
      desc = "[S]earch [F]iles",
    },
    {
      "<leader>sb",
      function()
        require("fzf-lua").buffers { previewer = false }
      end,
      desc = "[S]earch [B]uffers",
    },
    {
      "<leader>sc",
      function()
        require("fzf-lua").files { previewer = false, cwd = "~/.config/nvim" }
      end,
      desc = "[S]earch [F]iles",
    },
    {
      "<leader>sw",
      function()
        require("fzf-lua").grep_cword()
      end,
      desc = "[S]earch [W]ord",
    },
    {
      "<leader>s/",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      desc = "[S]earch [/] in Current Buffer",
    },
    {
      "<leader>sg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "[S]earch [G]rep",
    },
  },
}
