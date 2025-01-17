vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<leader>eo", ":Exp<CR>", { desc = "Open netrw" })
vim.keymap.set("n", "<leader>cl", ":nohl<CR>", { desc = "Clear last highlight" })

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "move highlighted down" })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "move highlighted up" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "move highlighted up" })

vim.keymap.set('n', '<leader>nn', '<C-S-6>', { noremap = true, silent = true, desc = "Switch between recent buffers" })

-- Easier split navigation
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")
vim.keymap.set("n", "<C-L>", "<C-W>l")


-- Will remove soon, I haven't used terminal in vim ever so no need of these
-- -- terminal mappings
-- vim.keymap.set('n', '<A-i>', ':botright vsplit | terminal<CR>')
-- vim.keymap.set('t', '<A-i>', [[ <C-\><C-n><CMD>:q<CR> ]])
-- vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
-- vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
-- vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
-- vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
-- vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })

