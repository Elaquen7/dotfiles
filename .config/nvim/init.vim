:set number
:set relativenumber
:set autoindent
:set mouse=a			" enable mouse
:set smarttab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4 
:set linebreak			" Wrap last word on line to next line

call plug#begin("~/.config/nvim/plugged")

Plug 'https://github.com/vim-airline/vim-airline'	" Status bar at bottom
Plug 'https://github.com/preservim/nerdtree'		" NerdTree: Try ^f, ^t and ^n in normal mode 
Plug 'https://github.com/tpope/vim-surround'		" Change surroundings with cs<select><replace> in normal mode
Plug 'https://github.com/tpope/vim-commentary'		" Comment/Uncomment with gc & gcc in normal mode
Plug 'https://github.com/haishanh/night-owl.vim'	" Night Owl color scheme
Plug 'https://github.com/ryanoasis/vim-devicons'	" Icons for NeoVim
Plug 'https://github.com/ap/vim-css-color'			" Preview CSS Colors in Vim
Plug 'https://github.com/preservim/tagbar'			" Displays a TagBar side bar: Try <F8> in normal mode
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multiline Cursors with ^UP or ^DOWN in normal mode; For more help try ':help visual-multi'
Plug 'neoclide/coc.nvim', {'branch': 'release'}		" Autocomplete
Plug 'https://github.com/github/copilot.vim'		" GitHub Copilot
Plug 'https://github.com/nickeb96/fish.vim'			" Fish Script Syntax Highlighting
Plug 'ggandor/lightspeed.nvim'
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-z> :terminal fish<CR>i
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <esc> :noh<CR> :helpclose<CR>

if (has("termguicolors"))
 set termguicolors
endif

:colorscheme night-owl

let g:airline_powerline_fonts = 1


