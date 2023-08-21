call plug#begin('~/.vim/plugged')
"Add plugins
Plug 'vim-airline/vim-airline' "airline状态栏
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'preservim/nerdcommenter'

"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'roxma/nvim-yarp', { 'do': 'pip install -r requirements.txt' } 
if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
        "Plug 'deoplete-plugins/deoplete-jedi'
        Plug 'zchee/deoplete-jedi'
endif

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'

call plug#end()


" keymap
noremap <C-Left> :bprevious<CR>
noremap <C-Right> :bnext<CR>
noremap <C-s> :w<CR>
imap <c-s> <Esc>:w<CR>a


" fold code by indent
set foldmethod=indent

" line number
set number
" paste without auto indentation
"set paste
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#buffer_nr_format = '%s '
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" deoplete
let g:deoplete#enable_at_startup = 1
set encoding=utf-8

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
"
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
"
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'python': { 'left': '#' } }
"
" Allow commenting and inverting empty lines (useful when commenting a
" region)
let g:NERDCommentEmptyLines = 1
"
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" markdown
let g:vim_markdown_math = 1

