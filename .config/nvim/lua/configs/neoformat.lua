vim.cmd[[
augroup fmt
  autocmd!
  " autocmd BufWritePre *.rs,*.cpp,*.c,*.cs undojoin | Neoformat
  au BufWritePre *.rs,*.cpp,*.c try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | endtry
augroup END
]]
