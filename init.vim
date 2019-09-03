call plug#begin('~/.nvim/plugged')

Plug 'fatih/vim-go'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'ayu-theme/ayu-vim'
Plug 'dense-analysis/ale'

call plug#end()

set background=dark
set t_Co=256
set hidden
set number
set relativenumber
set inccommand=split
set shiftwidth=4  " operation >> indents 2 columns; << unindents 2 columns
set tabstop=4     " a hard TAB displays as 2 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

" Go especifc settings
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:deoplete#enable_at_startup = 1

" Ale config
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Key mapping
let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>t :GoAlternate<cr>
nnoremap <c-x> :vsplit<cr>
nnoremap <c-p> :Files<cr>
nnoremap <C-J> <C-W><C-J>

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
