vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<leader>eo", ":Exp<CR>", {desc = "Open netrw"})
vim.keymap.set("n", "<leader>ei", ":Lex<CR>", {desc = "Open netrw in vsplit"})
vim.keymap.set("n", "<leader>cl", ":nohl<CR>", {desc = "Clear last highlight"})

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", {desc = "move highlighted down"})
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", {desc = "move highlighted up"})
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "move highlighted up"})

vim.keymap.set("n", "<leader>sn", ":bnext<CR>", {desc = "Change to Next buffer"})
vim.keymap.set("n", "<leader>sp", ":bprevious<CR>", {desc = "Change to Previous buffer"})

-- Easier split navigation
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")

vim.keymap.set('n', '<leader>nn', '<C-S-6>', { noremap = true, silent = true, desc = "Switch between recent buffers"})

-- terminal mappings
vim.keymap.set("n", "<leader>tm", ":botright vsplit | terminal<CR>", {desc = "Open terminal in vertical split"})
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })


-- resize splits
vim.keymap.set('n', '<M-k>', ':resize -2<CR>')
vim.keymap.set('n', '<M-j>', ':resize +2<CR>')
vim.keymap.set('n', '<M-h>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<M-l>', ':vertical resize +2<CR>')

