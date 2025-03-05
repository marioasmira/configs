" Plugin section ----------------------------------------------

" listing plugins
call plug#begin()
Plug 'lervag/vimtex', { 'tag': 'v2.15' } 		" specific version due to neovim v0.9
Plug 'nvim-tree/nvim-web-devicons' 			" optional icons for nvim-tree
Plug 'nvim-tree/nvim-tree.lua'				" to show the file structure
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.13.1'}	" toggles the terminal (specific version so it doesn't break)
call plug#end()

" Loading the file in 'lua/config.lua'
lua require('config')

" General configurations --------------------------------------

" Displays number of line
set number
" Displays non-focus line numbers relative to focus
set relativenumber
" Displays a line under the focus line. The option highlights only the number
" of the line
set cursorline
set cursorlineopt=number
" Connects the clipboard inside and outside neovim
set clipboard=unnamedplus
" Highlights the search terms and leaves them highlighted afterwards
" :nohls will remove the highlight
set hlsearch
" Allows commands to be case insensitive
set ignorecase
" Changes the behavior of backspace to the defined terms
set backspace=indent,eol,start
" Shows the ruler on the bottom left (coordinates)
set ruler
" Defines which windows have a status line at the bottom (default=2, all)
set laststatus=2
" Asks for confirmation if something would fail (e.g., :q without saving)
set confirm
" Displays a visual warning for errors instead of a sound
set visualbell
" Defines if the mouse can interact with windows (a means all modes)
set mouse=a
" Defines the number of lines for the command line at the bottom
set cmdheight=2
" Defines how new windows will be created
set splitright
" Enable spell checking
set spell
" Define languages to spell check
set spelllang=en_gb,en_us,nl,pt
" Define tabs to be 4 spaces
set shiftwidth=4
set tabstop=8
set softtabstop=4
set noexpandtab
" Defines the line breaks to happen in white spaces leaving words intact
set linebreak
" Compatibility options: text wrapped lines use the columns for line numbers
" Doesn't seem to be working?
set cpoptions+="n"
" Character string to display when the line is wrapped
let &showbreak="> "

" NvimTree --------------------------------------------------------
" Ctrl+n to toggle the file structure
map <C-n> :NvimTreeToggle<CR>

" For VimTex ------------------------------------------------------
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note: Most plugin managers will do this automatically!
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
" Note: Most plugin managers will do this automatically!
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" ToggleTerm binds ----------------------------------------------------
map <C-t> :ToggleTerm size = 40 dir = ~ direction=horizontal name=home<CR>
