set nocompatible              " be iMproved, required
filetype off                  " required
set number
set numberwidth=4
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
syntax on

set exrc
set secure

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
Plugin 'ivanov/vim-ipython'
" Plugin 'bling/vim-bufferline'
Plugin 'mbbill/undotree'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/Improved-AnsiEsc'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Bundle 'CCTree'
Bundle 'ShowMarks'
Plugin 'vim-scripts/BufClose.vim'
Plugin 'ervandew/supertab'
Plugin 'kana/vim-tabpagecd'
call vundle#end()            " required
filetype plugin indent on    " required

" leader to space
let mapleader=" "

" sensible indents
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" autosave on make
set autowrite

" path in the status line
set statusline+=%F

" list buffers
nnoremap <F5> :buffers<CR>:buffer<Space> 
" cycle between buffers
nmap <C-l> :bnext<CR>
nmap <C-h> :bprev<CR>
" automatically save all buffers
set autowriteall
" better movement
nmap j gj
nmap k gk
nnoremap <C-j> <PageDown>
nnoremap <C-k> <PageUp>
" better search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <leader>q :nohlsearch<CR>
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
nmap <leader>e :NERDTreeToggle<CR>
" always show powerline
set laststatus=2
" themes and colors
" set t_Co=256
colorscheme inkpot
" easy motion
" map <Leader> <Plug>(easymotion-prefix)
" persistent undo
set undofile
set undolevels=1000
set undoreload=10000
let myUndoDir = expand($HOME."/.vim_undo")
call system('mkdir ' . myUndoDir)
let &undodir = myUndoDir
" splits
set splitbelow
set splitright
" easier vert splits
command -nargs=1 Vsb call VsbFunction(<f-args>)

function VsbFunction (arg1)
    execute 'vert sb' a:arg1
endfunction
" ycm
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jb :YcmCompleter GoToDefinition<CR>
" folding
set foldmethod=indent
set foldlevel=20
" silver searcher ag
noremap <leader>f :Ag<SPACE>
" copy current file and line number
map ,n <Esc>:let @*=line(".")<CR>
" ctags path
" let g:tagbar_ctags_bin="/home/vorona/bin/"
" toggle tagbar
nmap <leader>t :TagbarToggle<CR>
" remove trailing spaces
autocmd FileType c,cpp,java,php,python autocmd BufWritePre <buffer> :%s/\s\+$//e
" don't set completion globally
let g:ipy_completefunc = 'local'
" better tab completion for filename
set wildmode=longest,list,full
set wildmenu
