call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/YouCompleteMe'
Plug 'lervag/vimtex'
Plug 'vim-pandoc/vim-pandoc'
Plug 'python-mode/python-mode'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/goyo.vim'

call plug#end()

set number

" indentation rules
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

function SetPythonOptions()
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set textwidth=79
    set expandtab
    set autoindent
    set fileformat=unix
endfunction

au BufNewFile,BufRead *.py call SetPythonOptions()

" mark bad whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>

let python_highlight_all=1
syntax on

" folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

" rope slowness
let g:pymode_rope = 0
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_complete_on_dot = 0
