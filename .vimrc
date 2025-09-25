syntax on
set nocompatible
set wrap
set encoding=utf-8
set number
set laststatus=2
set mouse=a
set cursorline

filetype on
filetype plugin indent on
filetype indent on

" Start NERDTree and leave the cursor in it
" autocmd VimEnter * NERDTree

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

colorscheme gruvbox

" Mapping numbers in 'normal' mode
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Hightlight unwanted spaces
set list listchars=tab:..,trail:.,nbsp:+

" alt+backspace to delete words in 'insert' mode
imap <Esc><BS> <C-w>

" <TAB>: completion in 'insert' mode
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:deoplete#enable_at_startup = 1

" Enable omni completion for Vimscript
autocmd FileType vim setlocal omnifunc=vimcomplete#Complete


" ALE configuration
let g:ale_enabled = 1
let g:ale_linters = {'python': ['ruff']}
let g:ale_fixers = {'python': ['ruff']}
let g:ale_fix_on_save = 1
let g:ale_python_ruff_executable = '/home/oneiros/.local/bin/ruff'

let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0 

" Auto-trigger completion after typing a dot or parenthesis
autocmd FileType python inoremap <silent> . .<C-X><C-O>
autocmd FileType python inoremap <silent> ( (<C-X><C-O>

" fzf window appearance at the bottom at 40%
let g:fzf_layout = {'down': '40%'}

" Ctrl+P for fzf.vim in 'normal' mode
nnoremap <C-p> :Files<Cr>

" Ctrl+N for NERDTree in 'normal' mode
nnoremap <C-n> :NERDTreeFind<Cr>

" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

