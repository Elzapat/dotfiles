-- Misc
vim.g.mapleader = "<Space>"
vim.api.nvim_set_keymap("n", "<C-r>", ":source ~/.config/nvim/init.lua<CR>", { noremap = true })

-- Edition
vim.api.nvim_set_keymap("n", "K", "J", { noremap = true })

-- Buffer movement
vim.api.nvim_set_keymap("n", "<C-j>", ":bprevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-m>", ":bnext<CR>", { noremap = true })

-- Movement
vim.api.nvim_set_keymap("", "m", "l", { noremap = true })
vim.api.nvim_set_keymap("", "l", "k", { noremap = true })
vim.api.nvim_set_keymap("", "k", "j", { noremap = true })
vim.api.nvim_set_keymap("", "j", "h", { noremap = true })
vim.api.nvim_set_keymap("", "h", "<Nop>", { noremap = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<CR>", { noremap = true })
