-- set leader as space
vim.g.maplocalleader = ' '
vim.g.mapleader = " "

-- Set line numbers
vim.opt.nu = true

-- Set relative line numbers
vim.opt.relativenumber = true

-- I like how these look
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- Formatting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Autoindenting
vim.opt.smartindent = true

-- Disable word wrap
vim.opt.wrap = false

-- No swapfile, set up (plugin) undo tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable highlighting previous search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Better vim colors
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

-- Decrease updatetime
vim.opt.updatetime = 50

-- By default split below and to the right for new windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Autocomplete
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.api.nvim_set_option('updatetime', 300) 
vim.opt.shortmess = vim.opt.shortmess + { c = true}
-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
