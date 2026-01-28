return {
  'akinsho/toggleterm.nvim',
  version = "*",
  lazy = false,
  config = function()
    require("toggleterm").setup({
      open_mapping = nil,
      start_in_insert = true,
      direction = "horizontal",
      float_opts = { border = "curved" },
    })
    -- normal split terminal
    vim.keymap.set("n", "<leader>t", "<Cmd>ToggleTerm<CR>", { desc = "Toggle term as split" })

    -- floating terminal
    vim.keymap.set("n", "<leader>tf", "<Cmd>ToggleTerm direction=float<CR>", { desc = "Toggle term as float" })

    -- exit terminal mode with jk
    vim.keymap.set("t", "jk", [[<C-\><C-n>]])
  end,
}

