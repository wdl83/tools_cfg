set nocompatible " disable vi compatibility
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
"Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'eiiches/vim-rainbowbrackets'
"Plugin 'godlygeek/tabular'
Plugin 'valloric/MatchTagAlways'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-mark'
Plugin 'tranvansang/octave.vim'
Plugin 'chrisbra/Colorizer'
Plugin 'skanehira/preview-uml.vim'
call vundle#end()

filetype plugin on
filetype indent on

let g:preview_uml_url='http://localhost:8888'

let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

let mapleader = "q"
let g:mwDefaultHighlightingPalette = 'maximum'

" do not ask to load ycm config
let g:ycm_confirm_extra_conf = 0
"let g:ycm_filetype_whitelist = {}
" airline config
"let g:airline#extensions#tabline#enabled = 1
"
let g:gitgutter_max_signs = 1024

set laststatus=2 " always show statusline
set encoding=utf-8

"endif

if has("autocmd")
    autocmd BufWritePre *.{c,cpp,h,hpp,html,js,plantuml,m} :%s/\s\+$//e
    autocmd FileType javascript setlocal equalprg=js-beautify\ --stdin
endif

" mappings
nnoremap <silent> <F3> :Grep<CR>
nnoremap <silent> <F4> :Rgrep<CR>
nnoremap <silent> <F1> ::YcmCompleter GoToDefinition<CR>
nnoremap <silent> <F2> ::YcmCompleter GoToDeclaration<CR>

imap <tab> <space><space><space><space>

set encoding=utf-8
set laststatus=2 " always show the statusline
set nowrap
set backspace=2
set ruler
set number
set wildmenu
set wildmode=list:longest
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4
set cindent
set showmatch
set cino=g0,t0,N-s,(0,W4
syntax on
set t_Co=256
"set background=dark
colorscheme wombat256mod
hi SpellBad		ctermfg=196		ctermbg=234		cterm=bold		guifg=#ff2026	guibg=#3a3a3a	gui=bold
hi SpellCap		ctermfg=196		ctermbg=234		cterm=bold		guifg=#ff2026	guibg=#3a3a3a	gui=bold

highlight ColorColumn ctermbg=Black
set colorcolumn=81
set incsearch
set hlsearch
