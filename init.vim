" CrazyOptimist's NeoVim configuration

syntax enable                                             " Enables syntax highlight
set number                                                " Shows line numbers
set ruler                                                 " Shows the rulers
set showcmd                                               " Shows current cursor info
set autoindent                                            " Automatically guesses the indentation given the previous one
set shiftwidth=2                                          " Uses 2 space tabs by default
set softtabstop=2
set expandtab						  " Convert tabs into spaces
set hlsearch                                              " Automatically highlights search results, to hide them run :noh
set incsearch                                             " Searches incremetally as you type.
set ignorecase                                            " Ignores cases when searching
set noswapfile                                            " Disables swap files
set undofile                                              " Enable keeping history across sessions, don't forget to mkdir
set undodir=~/.vim/undo/
set nofixeol                                              " Do not insert a new line at the end of the file automatically
set backspace=indent,eol,start                            " Enable backspace key to delete stuffs properly

"""""""""""""""""""""""""""""""""
call plug#begin("~/AppData/Local/nvim/plugged")

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'lifepillar/vim-mucomplete'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'

" powerful autocomplete intellisense.
" coc.nvim requires node.js installed and you can install language server extensions using `:CocInstall extension-name`.
" recommended extensions are coc-tsserver (requires typescript), coc-html, coc-css.
" Plugin 'neoclide/coc.nvim'                

" Plugin 'vim-ruby/vim-ruby'                " ruby support
" Plugin 'fatih/vim-go'                     " golang support

" Plugin 'yuezk/vim-js'                     " javascript support enhanced
" Plugin 'HerringtonDarkholme/yats.vim'     " typescript support advanced
" Plugin 'maxmellon/vim-jsx-pretty'         " react jsx syntax support
" Plugin 'mattn/emmet-vim'                  " html auto complete
" Plugin 'posva/vim-vue'                    " vue syntax support

call plug#end()
"""""""""""""""""""""""""""""""""

" Config Section
" Theming
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme gruvbox
" NerdTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

