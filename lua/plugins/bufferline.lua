return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({})

    -- Navigate buffers
    vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>")
    vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>")
    vim.keymap.set("n", "<leader>bc", ":bd<CR>", { noremap = true, silent = true })
  end,
}
