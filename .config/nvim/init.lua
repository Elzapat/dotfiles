local plugins = require("plugins")
local packer = require("packer")

vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.background = "dark"

vim.cmd("colorscheme solarized")
vim.api.nvim_set_keymap("n", "<C-h>", ":bprevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":bnext<CR>", { noremap = true })

vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight Folded guibg=none")
vim.cmd("highlight Folded guifg=none")

packer.startup(function()
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use "kyazdani42/nvim-web-devicons"

	use "akinsho/bufferline.nvim"

	use "windwp/nvim-autopairs"
end)

require("bufferline").setup()
require("nvim-autopairs").setup()
