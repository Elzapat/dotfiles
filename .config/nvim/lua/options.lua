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

vim.opt.hidden = true

vim.cmd "autocmd CmdlineEnter /,? :set hlsearch"
vim.cmd "autocmd CmdlineLeave /,? :set nohlsearch"

vim.cmd "filetype indent on"
-- vim.cmd [[ autocmd BufEnter * set indentexpr= ]]
-- vim.o.cindent = false
-- vim.cmd [[ let g:polyglot_disabled = ["autoindent"] ]]
-- vim.cmd [[ set nocindent ]]
-- vim.cmd [[ set cinoptions=m1 ]]
-- vim.cmd [[ set indentexpr=GetRustIndent() ]]

vim.o.expandtab = true
-- if not vim.opt.tabstop._info.was_set then
-- if vim.o.indentexpr == "" then
-- 	vim.o.tabstop = 4
-- 	vim.o.shiftwidth = 4
-- end
-- vim.cmd[[
--     if !exists("indentexpr")
--         set tabstop=4
--         set shiftwidth=4
--     endif
-- ]]

vim.cmd[[
	autocmd BufRead *.rs,*.c,*.cpp,*.html,*.hbs set tabstop=4
	autocmd BufRead *.rs,*.c,*.cpp,*.html,*.hbs set shiftwidth=4
]]

vim.cmd [[
	set indentkeys+=0(
	set cinkeys+=0(
	set cinoptions+=(1s
	set cinoptions-=(2s
]]
