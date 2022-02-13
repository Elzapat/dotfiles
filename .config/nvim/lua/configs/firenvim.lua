vim.cmd[[
function! OnUIEnter(event) abort
  if 'Firenvim' ==# get(get(nvim_get_chan_info(a:event.chan), 'client', {}), 'name', '')
    set laststatus=0
    :AirlineToggle
    :LspStop
    set guifont=JetBrainsMono\ Nerd\ Font:h11
  endif
endfunction
autocmd UIEnter * call OnUIEnter(deepcopy(v:event))
]]
