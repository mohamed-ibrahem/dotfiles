""--------------------------------------------------------------------------
"" VIM Settings
""--------------------------------------------------------------------------
:let mapleader=" "
set rnu	" Relative numbering
set nu	" Current line number
set smartindent
set smartcase
set cursorline " Highlight active line
set ttimeoutlen=10 " Faster to exit insert mode
set clipboard^=unnamed " Use standard clipboard
set shiftwidth=4
set softtabstop=4
set mouse=a " enable mouse for all modes

""--------------------------------------------------------------------------
"" Mapping
""--------------------------------------------------------------------------
vnoremap y myy`y
vnoremap Y myY`y
vnoremap p "_dP
vnoremap < <gv
vnoremap > >gv
