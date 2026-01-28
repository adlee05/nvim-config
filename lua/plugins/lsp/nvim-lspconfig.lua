return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- Useful status updates for LSP.
		{ "j-hui/fidget.nvim", opts = {} },

		-- Allows extra capabilities provided by blink.cmp
		"saghen/blink.cmp",
	},
	config = function()
		-- ts/js
		vim.lsp.config.ts_ls = {
			filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
		}

		-- r_language_server

		vim.lsp.config("r_language_server", {
			settings = {
				r = {
					lsp = {
						diagnostics = true,
					},
				},
			},
		})
		vim.lsp.enable("r_language_server")

		-- setup
		vim.lsp.enable("clangd")
		vim.lsp.enable("dockerls")
		vim.lsp.enable("cssls")
    vim.lsp.enable("jsonls")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("cpplint")
		vim.lsp.enable("pyright")
		vim.lsp.enable("prettierd")
		vim.lsp.enable("ts_ls")
    vim.lsp.enable("harper")
    vim.lsp.config.harper_ls = {
      filetypes = {"markdown", "text", "gitcommit"},
    }

		-- keymap
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer (LSP)" })
		vim.diagnostic.config({
			severity_sort = true,
			float = { border = "rounded", source = "if_many" },
			underline = { severity = vim.diagnostic.severity.ERROR },
			signs = vim.g.have_nerd_font and {
				text = {
					[vim.diagnostic.severity.ERROR] = "󰅚 ",
					[vim.diagnostic.severity.WARN] = "󰀪 ",
					[vim.diagnostic.severity.INFO] = "󰋽 ",
					[vim.diagnostic.severity.HINT] = "󰌶 ",
				},
			} or {},
			virtual_text = {
				source = "if_many",
				spacing = 2,
				format = function(diagnostic)
					local diagnostic_message = {
						[vim.diagnostic.severity.ERROR] = diagnostic.message,
						[vim.diagnostic.severity.WARN] = diagnostic.message,
						[vim.diagnostic.severity.INFO] = diagnostic.message,
						[vim.diagnostic.severity.HINT] = diagnostic.message,
					}
					return diagnostic_message[diagnostic.severity]
				end,
			},
		})
	end,
}
