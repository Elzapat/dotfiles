vim.cmd[[
augroup fmt
  autocmd!
  " autocmd BufWritePre *.rs,*.cpp,*.c undojoin | Neoformat
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | endtry
augroup END
]]
