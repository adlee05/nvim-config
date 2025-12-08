-- uses the vim.o metatable, equivalent to the :set command, sets for both global and buffer scope
vim.o.number = true -- sets line numbers
vim.o.relativenumber = true -- sets relative line numbers along with normal nos, used for jumping to certain lines
vim.o.mouse = 'a' -- allow mouse usage alongside keyboard
vim.o.showmode = false -- mode already shown in status bar, so omit
 
-- sync clipboard b/w the OS and neovim
-- otherwise, neovim has its own clipboard, not so useful for most of the time
vim.schedule(function() -- this sets the option after UiEnter, reduces startup time
	vim.o.clipboard =  'unnamedplus'
end)

vim.o.breakindent = true -- beautiful line wrap
vim.o.undofile = true -- saves undo history
vim.o.ignorecase = true
vim.o.smartcase = true -- ignore caps in search term unless one or more caps present in search term
vim.o.signcolumn = 'yes' -- show the sign column on the left, useful for git, etc
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split' 
vim.o.cursorline  = true -- highlight current line
vim.o.scrolloff = 10
vim.o.confirm = true

vim.o.tabstop    = 2
vim.o.shiftwidth = 2
vim.o.expandtab  = true

vim.o.termguicolors = true
