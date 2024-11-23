local opt = vim.opt

-- Display settings
opt.relativenumber = true
vim.g.loaded_matchparen = true
opt.number = true
opt.cursorline = false
opt.termguicolors = true
opt.signcolumn = "yes"
opt.colorcolumn = "120"

-- Text editing settings
opt.wrap = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.ignorecase = true
opt.incsearch = true
opt.hlsearch = true
opt.mouse = ""
opt.autoread = true

-- File and backup settings
opt.undofile = true
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.clipboard = "unnamedplus"

-- Popup menu settings
opt.pumheight = 10

-- Session settings
opt.sessionoptions = "buffers,curdir,folds,help,tabpages,terminal,globals"

-- Split settings
opt.splitbelow = true
opt.splitright = true

-- Path settings
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.path:append("**")
