vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.filetype.add({
  extension = {
    ejs = "html",  -- You can also set this to 'Javascript' depending on your file structure
  },
})
