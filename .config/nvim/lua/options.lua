vim.opt.termguicolors = true

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.background = "dark"

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.scrolloff = 10

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

vim.cmd "syntax enable"
vim.cmd "filetype indent on"
-- vim.cmd [[ autocmd BufEnter * set indentexpr= ]]
-- vim.o.cindent = false
-- vim.cmd [[ let g:polyglot_disabled = ["autoindent"] ]]
-- vim.cmd [[ set nocindent ]]
-- vim.cmd [[ set cinoptions=m1 ]]
-- vim.cmd [[ set indentexpr=GetRustIndent() ]]

vim.o.expandtab = true
--if not vim.opt.tabstop._info.was_set then
-- if vim.o.indentexpr == "" then
vim.o.tabstop = 4
vim.o.shiftwidth = 4
--end
--end

-- vim.cmd[[
--     if !exists("indentexpr")
--         set tabstop=4
--         set shiftwidth=4
--     endif
-- ]]

vim.cmd[[
	set indentkeys+=0(
	set cinkeys+=0(
	set cinoptions+=(1s
	set cinoptions-=(2s
]]

vim.cmd[[let g:vim_markdown_math = 1]]

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
-- vim.cmd([[
-- 	set signcolumn=yes
-- 	autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
-- ]])
--
-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
