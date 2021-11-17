vim.opt.termguicolors = true

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.background = "dark"

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.mouse = "a"

vim.opt.incsearch = true

vim.opt.smartcase = true

vim.opt.lazyredraw = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.clipboard:append("unnamedplus")

vim.opt.pumblend = 25

vim.opt.encoding = "UTF-8"

vim.cmd "autocmd CmdlineEnter /,? :set hlsearch"
vim.cmd "autocmd CmdlineLeave /,? :set nohlsearch"

vim.cmd "filetype indent on"
-- vim.cmd "autocmd filetype * set indentexpr=off"
-- vim.cmd [[ autocmd BufEnter * set indentexpr= ]]
vim.opt.cindent = false
vim.cmd [[ let g:polyglot_disabled = ['sensible'] ]]
