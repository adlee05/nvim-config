return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup()
    vim.keymap.set("n", "<leader>tt", "<Cmd>ToggleTerm<CR>")
    vim.keymap.set("n", "<leader>tf", "<Cmd>ToggleTerm direction=float<CR>")
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], {})
  end,
}
