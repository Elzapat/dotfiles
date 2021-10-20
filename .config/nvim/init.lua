require("plugins")

vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.background = "dark"
vim.opt.mouse = "a"

vim.cmd("colorscheme gruvbox")
vim.api.nvim_set_keymap("n", "<C-j>", ":bprevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-m>", ":bnext<CR>", { noremap = true })

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

noremap m l
noremap l k
noremap k j
noremap j h
]], true)

require("bufferline").setup()
require("nvim-autopairs").setup()
-- require("plugins.indent_blankline")
--
require("plugins.indent_blankline")
