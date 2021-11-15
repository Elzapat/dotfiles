vim.api.nvim_exec([[
  " let g:airline_theme = "base16_gruvbox_soft"
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ":t"
  let g:airline#extensions#tabline#formatter = "unique_tail"
  let g:airline#extensions#nerdtree_statusline = 1
  let g:airline_powerline_fonts = 1
]], true)
