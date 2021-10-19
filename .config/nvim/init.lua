local packer = require("packer")

vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.background = "dark"
vim.opt.mouse = "a"

vim.cmd("colorscheme gruvbox")
vim.api.nvim_set_keymap("n", "<C-h>", ":bprevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":bnext<CR>", { noremap = true })

vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight Folded guibg=none")
vim.cmd("highlight Folded guifg=none")

vim.cmd([[ let g:airline_theme = "base16_gruvbox_dark_medium" ]])

vim.api.nvim_exec([[
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#nerdtree_statusline = 1
let g:airline_powerline_fonts = 1
]], true)

packer.startup(function()
	use "wbthomason/packer.nvim"

	use "ishan9299/nvim-solarized-lua"

	use "sheerun/vim-polyglot"

	use "neovim/nvim-lspconfig"

	use "kyazdani42/nvim-web-devicons"

	use "akinsho/bufferline.nvim"

	use "windwp/nvim-autopairs"

	use "vim-airline/vim-airline"
	use "vim-airline/vim-airline-themes"

	use "lukas-reineke/indent-blankline.nvim"

	use { "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } }
end)

require("bufferline").setup()
require("nvim-autopairs").setup()
-- require("plugins.indent_blankline")
local plugins = require("plugins")
require("plugins.indent_blankline")
