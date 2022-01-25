local map = vim.api.nvim_set_keymap

-- Misc
vim.g.mapleader = " "
-- map("n", "<C-r>", ":source ~/.config/nvim/init.lua<cr>", { noremap = true })
map("n", "<leader>r", ":source ~/.config/nvim/init.lua<cr>", { noremap = true })
map("n", "<leader>q", "<C-w><C-q>", { noremap = true })

-- Edition
map("n", "K", "J", { noremap = true })

-- Buffer movement
map("n", "<C-j>", ":bprevious<cr>", { noremap = true })
map("n", "<C-m>", ":bnext<cr>", { noremap = true })

map("", "<leader>m", "<C-w>l", { noremap = true })
map("", "<leader>l", "<C-w>k", { noremap = true })
map("", "<leader>k", "<C-w>j", { noremap = true })
map("", "<leader>j", "<C-w>h", { noremap = true })

map("", "<leader>x", ":bd<cr>:bd #<cr>", { noremap = true })

-- Movement
-- map("", "m", "l", { noremap = true })
-- map("", "l", "k", { noremap = true })
-- map("", "k", "j", { noremap = true })
-- map("", "j", "h", { noremap = true })
-- map("", "h", "<Nop>", { noremap = true })

map("i", "<A-h>", "<Left>", { noremap = true })
map("i", "<A-j>", "<Down>", { noremap = true })
map("i", "<A-k>", "<Up>", { noremap = true })
map("i", "<A-l>", "<Right>", { noremap = true })

-- Telescope
map("n", "<C-p>", ":Telescope find_files<cr>", { noremap = true })
map("n", "<leader>p", ":Telescope find_files<cr>", { noremap = true })

map("n", "<leader>f", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true })
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

map("", "<leader>en", ":lua vim.lsp.diagnostic.goto_next()<cr>", { noremap = true })
map("", "<leader>ep", ":lua vim.lsp.diagnostic.goto_prev()<cr>", { noremap = true })
