set nocompatible              " be iMproved, required
filetype off                  " required
set number
set numberwidth=4
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bogado/file-line'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'techlivezheng/vim-plugin-minibufexpl'
Plugin 'bling/vim-bufferline'
Plugin 'mbbill/undotree'
call vundle#end()            " required
filetype plugin indent on    " required

" sensible indents
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" list buffers
nnoremap <F5> :buffers<CR>:buffer<Space> 
" cycle between buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
" automatically save all buffers
set autowriteall
" better movement
nmap j gj
nmap k gk
" better search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>
" better search with incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" remap ; to ctrl+p
:nmap ; :CtrlPBuffer<CR>
" ctrl+p settings
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
" nerd tree start
nmap \e :NERDTreeToggle<CR>
" always show powerline
set laststatus=2
" themes and colors
" set t_Co=256
colorscheme inkpot
" easy motion
map <Leader> <Plug>(easymotion-prefix)
" persistent undo
set undofile
set undolevels=1000
set undoreload=10000
let myUndoDir = expand($HOME."/.vim_undo")
call system('mkdir ' . myUndoDir)
let &undodir = myUndoDir
