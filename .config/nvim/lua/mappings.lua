-- Misc
vim.g.mapleader = "<Space>"
vim.api.nvim_set_keymap("n", "<C-r>", ":source ~/.config/nvim/init.lua<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":source ~/.config/nvim/init.lua<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>q", "<C-w><C-q>", { noremap = true })

-- Edition
vim.api.nvim_set_keymap("n", "K", "J", { noremap = true })

-- Buffer movement
vim.api.nvim_set_keymap("", "<C-j>", ":bprevious<cr>", { noremap = true })
vim.api.nvim_set_keymap("", "<C-m>", ":bnext<cr>", { noremap = true })

vim.api.nvim_set_keymap("", "<leader>m", "<C-w>l", { noremap = true })
vim.api.nvim_set_keymap("", "<leader>l", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("", "<leader>k", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("", "<leader>j", "<C-w>h", { noremap = true })

-- Movement
vim.api.nvim_set_keymap("", "m", "l", { noremap = true })
vim.api.nvim_set_keymap("", "l", "k", { noremap = true })
vim.api.nvim_set_keymap("", "k", "j", { noremap = true })
vim.api.nvim_set_keymap("", "j", "h", { noremap = true })
vim.api.nvim_set_keymap("", "h", "<Nop>", { noremap = true })

vim.api.nvim_set_keymap("", "<leader>x", ":bd<cr>:bd #<cr>", { noremap = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<cr>", { noremap = true })
