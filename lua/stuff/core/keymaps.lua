vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear serach highlights"})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "move highlighted down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "move highlighted up"})
