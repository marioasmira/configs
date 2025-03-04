" Plugin section ----------------------------------------------

" listing plugins
call plug#begin()
Plug 'lervag/vimtex', { 'tag': 'v2.15' } 	" specific version due to neovim v0.9
Plug 'nvim-tree/nvim-web-devicons' 		" optional icons for nvim-tree
Plug 'nvim-tree/nvim-tree.lua'			" to show the file structure
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.13.1'}	" toggles the terminal (specific version so it doesn't break)
call plug#end()

" Loading the file in 'lua/config.lua'
lua require('config')

" General configurations --------------------------------------

" Displays number of line
set number
" Displays non-focus line numbers relative to focus
set relativenumber
" Displays a line under the focus line
set cursorline
" Connects the clipboard inside and outside neovim
set clipboard=unnamedplus
" Highlights the search terms and leaves them highlighted afterwards
" :nohls will remove the highlight
set hlsearch
" Allows commands to be case insensitive
set ignorecase
" Overwrites ignorecase if there are upper case letter in command
set smartcase
" Changes the behavior of backspace to the defined terms
set backspace=indent,eol,start
" Shows the ruler on the bottom left (coords)
set ruler
" Defines which windows have a status line at the bottom (default=2, all)
set laststatus=2
" Asks for confirmation if something would fail (e.g., :q without saving)
set confirm
" Displays a vidual warning for errors instead of a sound
set visualbell
" Defines if the mouse can interact with windows (a means all modes)
set mouse=a
" Defines the number of lines for the command line at the bottom
set cmdheight=2
" Defines how new windows will be created
set splitright

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

" ToggleTerm binds
map <C-t> :ToggleTerm size = 40 dir = ~ direction=horizontal name=home<CR>
