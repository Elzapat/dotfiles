call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'tikhomirov/vim-glsl'
Plug 'cespare/vim-toml'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'kien/ctrlp.vim'
" Plug 'edkolev/tmuxline.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" look n feel
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme solarized8
set nocompatible

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
syntax enable
filetype plugin indent on

hi Normal guibg=NONE ctermbg=NONE
highlight clear LineNr

" let g:gruvbox_contrast_dark = "hard"

set t_Co=256
" set background=dark

let mapleader = "\<Space>"
set relativenumber
set number
set cursorline
set tabstop=4
set shiftwidth=0
set expandtab
set incsearch
set nohlsearch
set smartcase
set colorcolumn=200
set lazyredraw
set splitbelow
set splitright
set clipboard+=unnamedplus
set noshowmode
set mouse=a
set ttimeoutlen=10
set pumblend=25
" set fillchars+=vert:\|

" highlight clear CursorLineNr
" highlight clear CursorLine

hi CursorLine guibg=#202020
hi CursorLineNr guibg=#202020
hi ColorColumn guibg=#202020
hi VertSplit guibg=#202020 guifg=#202020
hi StatusLineNR guibg=#202020 guifg=#202020
hi StatusLine guibg=#202020 guifg=#202020
hi StatusLineNC guibg=#202020 guifg=#202020

" remaps

nnoremap <C-j> :bprevious<CR>
nnoremap <C-m> :bnext<CR>
nnoremap K J
nnoremap <leader>r :source $MYVIMRC<CR>
noremap m l
noremap l k
noremap k j
noremap j h
noremap <leader>m <C-w>l
noremap <leader>l <C-w>k
noremap <leader>k <C-w>j
noremap <leader>j <C-w>h

function! Set2SpacesTab()
    set tabstop=2
    set shiftwidth=2
endfunction

nnoremap <leader>é :call Set2SpacesTab()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline config
""""""""""""""""""""""""""""""""""""""""
" let g:tmuxline_preset = 'custom'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cxx highlight config
""""""""""""""""""""""""""""""""""""""""
let g:lsp_cxx_hl_use_nvim_text_props = 1
highlight LspCxxHlSymVariable ctermfg=Gray guifg=Gray
highlight LspCxxHlGroupMemberVariable ctermfg=Gray guifg=Gray
highlight LspCxxHlGroupNamespace ctermfg=130 guifg=#E62F22
highlight LspCxxHlSymClass ctermfg=28 guifg=Green
highlight Type ctermfg=28 guifg=Green
highlight LspCxxHlGroupEnumConstant ctermfg=26 guifg=Blue

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrl-p config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_user_command = ['.git/',
"   \ 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:NERDTreeMinimalUI = 1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>o :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CoC config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html',
  \ 'coc-json', 'coc-prettier', 'coc-tsserver']

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not
" mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

""""""""
" gui settings
""""""""
set guifont=CozetteVector:h15

set cmdheight=1
