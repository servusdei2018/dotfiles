" ~/.config/init.vim
" ~/.config/nvim/init.vim

" use Unicode
set encoding=utf-8

" don't create `filename~` backups
set nobackup

" don't create `filename~` backups
set nobackup

" line numbers and distances 
set number

" Tab key enters 2 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Indent new line the same as the preceding line
set autoindent

call plug#begin()
  " Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Colorscheme
  Plug 'rebelot/kanagawa.nvim'
  " File manager
  Plug 'preservim/nerdtree'
call plug#end()

" Airline theme
let g:airline_theme='deus'

" Colorscheme
colorscheme kanagawa

" File manager shortcut
nnoremap <C-t> :NERDTreeToggle<CR>

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
