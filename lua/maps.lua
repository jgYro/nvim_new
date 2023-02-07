---Telescope
require("telescope.builtin")
vim.keymap.set('n', '<space>fj', '<cmd>Telescope<CR>', {})

---Hop
require('hop')
vim.keymap.set('n', '<space>jf', '<cmd>HopAnywhere<CR>', {})

-- Center selections and movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<space>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<space>j", "<cmd>lprev<CR>zz")

-- Move to other vim windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Open terminals
vim.keymap.set('n', '<space>t', '<cmd>:split<CR><cmd>:term<CR>a')
vim.keymap.set('n', '<space>y', '<cmd>:vsplit<CR><cmd>:term<CR>a')

-- Switch to normal mode in terminal
vim.keymap.set('t', '<C-n>', '<C-|><C-n>')

--helix mapping
vim.keymap.set('n', 'H', '_')
vim.keymap.set('n', 'L', '$')

--Move visual selection vertically
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


--Don't need third party plugins for autopairs
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "<", "<><left>")

-- Find and replace stuff
vim.keymap.set("n", "<space>S", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("v", "<space>s", ":s/")

-- Not override value to be pasted after deletction or pasting of previous value
vim.keymap.set("x", "<space>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<space>d", [["_d]])

-- Process selected text via shell command (Replace selected text in buffer)
vim.keymap.set("x", "<space>X", ":'<,'>:!")
vim.keymap.set("x", "<space>x", "yPgv:'<,'>:!")


