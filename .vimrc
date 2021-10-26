" vim-plug
call plug#begin()

" change from single to multiline blocks
Plug 'jgdavey/vim-blockle'

" distraction-free writing
Plug 'junegunn/goyo.vim'

" color scheme
Plug 'tpope/vim-vividchalk'

" basic vim defaults
Plug 'tpope/vim-sensible'

" Unix utilities
Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-pathogen'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-db'
Plug 'tpope/vim-rhubarb'

" Query SQL databases
Plug 'tpope/vim-dadbod'
" UI for running SQL queries
Plug 'kristijanhusak/vim-dadbod-ui'

" Markdown preview
Plug 'shime/vim-livedown'
nmap gm :LivedownToggle<CR>

call plug#end()

colorscheme vividchalk

" Fix cursors in iTerm/tmux
" tpope says this is bad and will bite me one day
set t_SI=[6\ q
set t_EI=[2\ q

" line numbers
set number

set undofile

" run Dispatch with d-enter
" nmap <script> d<CR> <SID>:Dispatch<CR>
nmap d<CR> :Dispatch<CR>

" blockle?
" 
" split the other way

" Toggle line wrap with leader w
let s:wrapenabled = 0
function! ToggleWrap()
  set wrap nolist
  if s:wrapenabled
    set nolinebreak
    unmap j
    unmap k
    unmap 0
    unmap ^
    unmap $
    let s:wrapenabled = 0
  else
    set linebreak
    nnoremap j gj
    nnoremap k gk
    nnoremap 0 g0
    nnoremap ^ g^
    nnoremap $ g$

    vnoremap j gj
    vnoremap k gk
    vnoremap 0 g0
    vnoremap ^ g^
    vnoremap $ g$
    let s:wrapenabled = 1
  endif
endfunction
map <leader>w :call ToggleWrap()<CR>

" change the location that stuff splits
set splitbelow
set splitright
