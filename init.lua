-- the leader should be set before anything else loads, or wrong leader will be used
-- This is using the global metatable (vim.g)
vim.g.mapleader =  ' '
vim.g.maplocalleader = ' '

require 'config.lazy'
require 'config.options'
require 'config.keymaps'
require('lazy').setup('plugins')
-- let nvim know if you have a nerd font
vim.g.have_nerd_font = true
