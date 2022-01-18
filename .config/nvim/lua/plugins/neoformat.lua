vim.cmd[[
augroup fmt
  autocmd!
  autocmd BufWritePre *.rs,*.cpp,*.c undojoin | Neoformat
augroup END
]]
