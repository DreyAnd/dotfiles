syntax enable

"TABS
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
"Show the command
set showcmd

"Highlight the cursor
"set cursorline

"Show line number
set number

"Detect file types
filetype indent on

"Autocomplete menu
set wildmenu

"Auto-redraw
set lazyredraw

"Highlights mathing brackets
set showmatch

"Searching
set hlsearch
set incsearch
nnoremap <leader><space> :nohlsearch<CR>

"Code folding
set foldenable
set foldlevelstart=10
nnoremap zf2j za
set foldmethod=indent

"Backspace
set backspace=2

"Copy and paste using mouse
set mouse=r
"Press F5 to hide line number and F3 to show it
nnoremap <F5> :set nonumber<CR>
nnoremap <F3> :set number<CR>

"~Vundle~
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

"Background
set background=dark
 
"Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'devx/c.vim'
Plugin 'preservim/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'bignimbus/pop-punk.vim'

call vundle#end()
filetype plugin indent on

if (has("termguicolors"))
  set termguicolors
endif


"Colorscheme
colorscheme pop-punk

if !exists('g:pop_punk_bold')
  let g:pop_punk_bold = 1
endif

if !exists('g:pop_punk_italic')
  let g:pop_punk_italic = 1
endif

if !exists('g:pop_punk_underline')
  let g:pop_punk_underline = 1
endif

if !exists('g:pop_punk_undercurl') && g:pop_punk_underline != 0
  let g:pop_punk_undercurl = 1
endif

if !exists('g:pop_punk_inverse')
  let g:pop_punk_inverse = 1
endif

if !exists('g:pop_punk_colorterm')
  let g:pop_punk_colorterm = 1
endif 

let g:pop_punk_italic = 0


" Line number colors
"highlight LineNr term=bold cterm=NONE ctermfg=Red ctermbg=NONE gui=NONE guifg=Red guibg=NONE

"NERDTREE SHORTCUT(F6)
nnoremap <F6> :NERDTree<CR>

"No annoying YCM docs info
let g:ycm_confirm_extra_conf = 0

"let g:ycm_show_diagnostics_ui = 0
