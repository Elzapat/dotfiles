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
-- vim.cmd "autocmd filetype * set indentexpr=off"
-- vim.cmd [[ autocmd BufEnter * set indentexpr= ]]
-- vim.o.cindent = false
vim.cmd [[ let g:polyglot_disabled = ["autoindent"] ]]
-- vim.cmd [[ set nocindent ]]
-- vim.cmd [[ set cinoptions=m1 ]]
-- vim.cmd [[ set indentexpr=GetRustIndent() ]]

if not vim.opt.tabstop._info.was_set then
	vim.o.tabstop = 4
	vim.o.shiftwidth = 4
end

vim.cmd [[ set cinkeys += ",0(" ]]
-- if vim.opt.shiftwidth > 8 then
-- 	vim.opt.shiftwidth = 4
-- 	vim.opt.tabstop = 4
-- end

-- vim.cmd[[
-- 	autocmd FileType c set indentexpr=GetCIndent()
-- 	autocmd FileType rust set indentexpr=GetRustIndent()
-- ]]
