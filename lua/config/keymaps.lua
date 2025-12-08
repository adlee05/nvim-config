local map = vim.keymap.set
local opts = {noremap = true, silent = true}

-- uses the set() method in vim.keymap metatable
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- keymaps to move b/w splits
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- diagnostics keymap
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- jk keymap to go from insert to normal mode
map('i', 'jk', '<Esc>', { desc = 'Now in normal mode' })
-- temp keymap
map('n', '<leader>bb', '<cmd>Ex<CR>', { desc = 'Go to netrw' })
