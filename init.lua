require("vim-options")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")
vim.keymap.set('n', '<leader>lf', vim.diagnostic.open_float, { desc = 'Open diagnostic float' })

-- save file keymap
-- Set timeoutlen to 300ms for faster key sequence recognition
vim.o.timeoutlen = 300
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("i", "jk", "<Esc>")
vim.opt.clipboard:append("unnamedplus")

vim.api.nvim_create_autocmd({"TextChanged", "InsertLeave"}, {
  pattern = "*",
  callback = function() vim.cmd("silent! update") end,
})
