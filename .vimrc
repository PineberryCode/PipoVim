" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype plugin indent on
set autoindent
set smartindent

" Turn syntax highlighting on.
syntax on

" Set tab width to 2 columns.
set tabstop=4

" Indentation uses 2 spaces
set shiftwidth=4

" Backspace & Tab works it would have 4 spaces
set softtabstop=4

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" While searching though a file incrementally highlight matching characters as you type.
" '/' inits from back to front | '?' inits from front to back ...
set incsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Vimscript initialization file
colorscheme wildcharm
set termguicolors

" No visual lines
set display=truncate

"-- AUTOCLOSE NATIVE CONFIG
      "autoclose and position cursor to write text inside
inoremap ' ''<left>
inoremap ` ``<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" PLUGINS ---------------------------------------------------------------- {{{
" Plugin code goes here.
call plug#begin()
	Plug 'tpope/vim-sensible'
	" Plug 'prabirshrestha/vim-lsp'
	" Plug 'mattn/vim-lsp-settings'
	" Plug 'prabirshrestha/asyncomplete.vim'
	" Plug 'prabirshrestha/asyncomplete-lsp.vim'
	" Plug 'Shougo/ddc.vim'
	" Plug 'shun/ddc-vim-lsp'
	Plug 'rust-lang/rust.vim'
	" Plug 'dense-analysis/ale'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tpope/vim-fugitive' " Git integration 
	Plug 'vim-airline/vim-airline' " Status bar
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/tagbar' " Navigation (functions, class, structs, etc)
	Plug 'junegunn/fzf', {'do': './install --all'} " Fzf (require Fzf CLI)
	Plug 'junegunn/fzf.vim' " to integrate Fzf with Vim
	Plug 'pangloss/vim-javascript'
call plug#end()
" }}}

" Jump to Definition
nmap <silent> <leader>j :call CocActionAsync('jumpDefinition')<CR>

" Hover Definition
nmap <silent> <leader>h :call CocActionAsync('doHover')<CR>

" Autocomplete with tab
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : Check_back_space()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
                                                       
function! Check_back_space() abort                     
	let col = col('.') - 1                             
	return !col || getline('.')[col - 1] =~ '\s' ? "\<TAB>" : "\<C-r>=coc#pum#_fallback_word()\<CR>"
endfunction                                            
                                                      
nmap <silent> <leader>a <Plug>(coc-codeaction-cursor)  
xmap <silent> <leader>a <Plug>(coc-codeaction-selected)
