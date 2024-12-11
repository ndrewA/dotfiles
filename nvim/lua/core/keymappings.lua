vim.g.mapleader = ' '
vim.g.localleader = ' '

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- explorer
keymap('n', '<leader>e', ':Ex<CR>', opts)

-- navigate windows
keymap('n', '<C-h>', "<C-w>h", opts)
keymap('n', '<C-j>', "<C-w>j", opts)
keymap('n', '<C-k>', "<C-w>k", opts)
keymap('n', '<C-l>', "<C-w>l", opts)

-- navigate termals
keymap('t', '<C-h>', "<C-\\><C-N><C-w>h", opts)
keymap('t', '<C-j>', "<C-\\><C-N><C-w>j", opts)
keymap('t', '<C-k>', "<C-\\><C-N><C-w>k", opts)
keymap('t', '<C-l>', "<C-\\><C-N><C-w>l", opts)

-- resize window
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- move text up/down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- dont yank when pasting
keymap('v', 'p', '"_dP', opts)

-- normal mode in terminal mode
keymap('t', '<Esc>', '<C-\\><C-n>', opts)
