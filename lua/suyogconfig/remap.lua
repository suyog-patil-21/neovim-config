-- File Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- similar to move in vscode using alt + arrow key
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n","n", "nzzzv")
--vim.keymap.set("n","N", "NzzzV")

-- format buff / file
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

-- Quick Fix list
vim.keymap.set("n", "<C-k", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- advance copy stuff
vim.keymap.set("x", "<leader>p", "\"_dp")


-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")





