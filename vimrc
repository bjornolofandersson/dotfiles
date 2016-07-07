"--------------------------------------------------------------------------
" Vundle
"--------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'

"--------------------------------------------------------------------------
" Customize visuals
"--------------------------------------------------------------------------
set t_Co=256
set background=dark
syntax enable
colorscheme gruvbox
set laststatus=2 " No status bar
set statusline=\  " Empty status line
"highlight StatusLine ctermfg=white ctermbg=darkgray cterm=reverse
"highlight StatusLineNC ctermfg=white ctermbg=darkgray cterm=bold

"--------------------------------------------------------------------------
" Tab settings
"--------------------------------------------------------------------------
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"--------------------------------------------------------------------------
" Setup keybindings
"--------------------------------------------------------------------------
let mapleader = ","
inoremap jk <esc>`^

" Save with ctrl-s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

"--------------------------------------------------------------------------
" Search settings
"--------------------------------------------------------------------------
set incsearch
set hlsearch
hi Search ctermbg=5 ctermfg=7 cterm=none
hi IncSearch ctermbg=0 ctermfg=7 cterm=none

"--------------------------------------------------------------------------
" Setup number column
"--------------------------------------------------------------------------
set nu
highlight LineNr ctermfg=darkgrey ctermbg=none
nnoremap <F2> :set nonumber!<CR>
hi CursorLine ctermfg=none ctermbg=none cterm=none
set cursorline
hi CursorLineNR ctermbg=5 ctermfg=7

let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1

"--------------------------------------------------------------------------
" CtrlP
"--------------------------------------------------------------------------
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>f :CtrlP<CR>
hi CtrlPLinePre ctermbg=235 ctermfg=250 guibg=#262626 guifg=#bcbcbc cterm=NONE gui=NONE

"--------------------------------------------------------------------------
" Markdown
"--------------------------------------------------------------------------
let g:vim_markdown_frontmatter = 1

"--------------------------------------------------------------------------
" Auto commands
"--------------------------------------------------------------------------

" Automatically remove trailing whitespace on save
autocmd BufWritePre *.* :%s/\s\+$//e
