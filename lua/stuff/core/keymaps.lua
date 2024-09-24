vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear serach highlights"})
vim.keymap.set("n", "<leader>eo", ":Exp<CR>", {desc = "Open netrw"})
vim.keymap.set("n", "<leader>ei", ":Lex<CR>", {desc = "Open netrw in vsplit"})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "move highlighted down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "move highlighted up"})

-- auto close brackets
local pairs = {
  { '(', ')' },
  { '[', ']' },
  { '{', '}' },
}

for _, pair in ipairs(pairs) do
  vim.keymap.set('i', pair[1], function()
    return pair[1] .. pair[2] .. '<Left>'
  end, { expr = true, noremap = true })
end

vim.keymap.set('i', '<BS>', function()
  local col = vim.fn.col('.')
  local line = vim.fn.getline('.')
  local prev_char = line:sub(col - 1, col - 1)
  local next_char = line:sub(col, col)
  
  for _, pair in ipairs(pairs) do
    if prev_char == pair[1] and next_char == pair[2] then
      return '<BS><Del>'
    end
  end
  return '<BS>'
end, { expr = true, noremap = true })

-- Skip over closing character if it's already there
for _, pair in ipairs(pairs) do
  vim.keymap.set('i', pair[2], function()
    local col = vim.fn.col('.')
    local line = vim.fn.getline('.')
    local next_char = line:sub(col, col)
    
    if next_char == pair[2] then
      return '<Right>'
    else
      return pair[2]
    end
  end, { expr = true, noremap = true })
end
-------

