vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear serach highlights"})
vim.keymap.set("n", "<leader>eo", ":Exp<CR>", {desc = "Open netrw"})
vim.keymap.set("n", "<leader>ei", ":Lex<CR>", {desc = "Open netrw in vsplit"})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "move highlighted down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "move highlighted up"})

# auto close stuff
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")

