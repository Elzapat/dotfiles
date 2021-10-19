local plugins = require("plugins")
local packer = require("packer")

vim.opt.termguicolors = true
vim.opt.relativenumber = true

packer.startup(function()
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use "kyazdani42/nvim-web-devicons"

	use "akinsho/bufferline.nvim"
end)

require("bufferline").setup{}

vim.cmd("colorscheme solarized")
vim.cmd("highlight Normal guibg=none")
vim.api.nvim_set_keymap("n", "<C-h>", ":bprevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":bnext<CR>", { noremap = true })
