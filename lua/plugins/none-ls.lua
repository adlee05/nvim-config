return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- JavaScript/TypeScript linting
        require("none-ls.diagnostics.eslint_d").with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        }),
        -- C++ linting
        require("none-ls.diagnostics.cpplint").with({
          filetypes = { "cpp", "c" },
        }),
        -- Lua formatting
        null_ls.builtins.formatting.stylua.with({
          filetypes = { "lua" },
        }),
        -- C/C++ formatting
        null_ls.builtins.formatting.clang_format.with({
          filetypes = { "cpp", "c", "proto" },
        }),
        -- Python formatting
        null_ls.builtins.formatting.black.with({
          filetypes = { "python" },
        }),
        -- Python import sorting
        null_ls.builtins.formatting.isort.with({
          filetypes = { "python" },
        }),
        -- General formatting (JS, JSON, CSS, etc.)
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "css", "scss", "html" },
        }),
        -- Ruby linting
        null_ls.builtins.diagnostics.rubocop.with({
          filetypes = { "ruby" },
        }),
        -- CSS linting
        null_ls.builtins.diagnostics.stylelint.with({
          filetypes = { "css", "scss" },
        }),
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("n", "<leader>gd", vim.diagnostic.disable, { desc = "Disable diagnostics" })
    vim.keymap.set("n", "<leader>ge", vim.diagnostic.enable, { desc = "Enable diagnostics" })
  end,
}
