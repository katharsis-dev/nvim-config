" Ensure encoding is utf-8
set encoding=utf-8

cal plug#begin('C:\Users\Brytton Tsai\AppData\Local\nvim\plugged')
" cal plug#begin('./plugged')

" Plugins
" File Explorer GUI
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" LSP Plugins
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

" Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind.nvim'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'nvim-treesitter/playground'

" Buffer Line
Plug 'romgrk/barbar.nvim'

" File traversing
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

"Indenting
Plug 'lukas-reineke/indent-blankline.nvim'

"Terminal in Vim
Plug 'akinsho/toggleterm.nvim'

"Scroll Bar

"Status Bar
Plug 'nvim-lua/plenary.nvim'
Plug 'tamton-aquib/staline.nvim'

"Themes
Plug 'tomasiser/vim-code-dark'
Plug 'rose-pine/neovim'
Plug 'haystackandroid/strawberry'
Plug 'numToStr/Sakura.nvim'

"Make Terminal Transparent
Plug 'tribela/vim-transparent'

"Code Commenting
Plug 'numToStr/Comment.nvim'

"Vim Sessions
" Plug 'rmagatti/auto-session'

call plug#end()

" Require Plugin Configurations
lua require("Brytton.toggleterm")
lua require("Brytton.file_browser")
lua require("Brytton.barbar")
lua require("Brytton.nvimtree")
lua require("Brytton.staline")
lua require("Brytton.comment")
lua require("Brytton.lspinstaller")
lua require("Brytton.lspconfig")
lua require("Brytton.treesitterconfig")
lua require("Brytton.treesittercontext")
"lua require("Brytton.autosession")

lua require('Brytton.rosepine')

" My Configurations
set number
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=0 noexpandtab
set nowrap
set mouse=n
set mouse=a

noremap <A-s> :SaveSession<cr>
noremap <A-r> :RestoreSession<cr>

nnoremap <SPACE> <Nop>
map <SPACE> <leader>

" nmap <silent> <C-w> <Cmd>BufferClose<CR>
" imap <silent> <C-w> <Cmd>BufferClose<CR>

" For quitting out of Vim Completely
command -bar Q %bdelete | quit


vnoremap <leader>y "+y
vnoremap <leader>p "+p

" Extra mappings for focusing different panes
nmap <A-h> <C-w>h
nmap <A-j> <C-w>j
nmap <A-k> <C-w>k
nmap <A-l> <C-w>l

" Mappings for File Explorer
noremap <silent> <C-n> :lua require'nvim-tree'.toggle()<CR>


" Mappings for Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"set termguicolors " this variable must be enabled for colors to be applied properly
" a list of groups can be found at `:help nvim_tree_highlight`
"
set termguicolors

" Scroll Bar Plugin Configuration

" Custom Theme Adjustments
augroup user_colors
	autocmd!
	" Making things transparent
	autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
	autocmd ColorScheme * highlight EndOfBuffer guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight LineNr guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight LineNr guibg=NONE ctermbg=NONE ctermfg=grey
	autocmd ColorScheme * highlight Error guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight StatusLine guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight ModeMsg guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight WarningMsg guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight NonText guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight SpecialKey guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight BufferTabpageFill guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight Directory guibg=NONE ctermbg=NONE
augroup END

augroup nerdtree
    autocmd!
    autocmd FileType nerdtree syntax on NERDTreeFlags
augroup END

set cursorline
set cursorlineopt=number
autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold
autocmd ColorScheme * highlight BufferCurrentSign guifg=#FFC0CB
autocmd ColorScheme * highlight BufferCurrentMod guifg=#FFC0CB

" Custom Syntax Highlighting
"autocmd ColorScheme * highlight mkdNbsp guifg=#FFC0CB

" Functions

" VS Code Style Colour Theme
colorscheme codedark

" Custom Highlight Groups
function! SynGroup()                                                            
    let l:s = synID(line('.'), col('.'), 1)                                       
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

" Rose Ping Colour Theme
"colorscheme rose-pine

" Strawberry Colour Theme
"colorscheme strawberry-dark

" Sakura Colour Theme
"colorscheme sakura
