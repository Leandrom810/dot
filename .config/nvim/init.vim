" Plugins
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Vim hex colors
Plug 'ap/vim-css-color'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq_nvim'
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
let g:coq_settings = { 'auto_start': 'shut-up' }
" LSP Colors
set termguicolors
hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red
hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow
hi LspDiagnosticsVirtualTextInformation guifg=Blue ctermfg=Blue
hi LspDiagnosticsVirtualTextInformationHint guifg=Green ctermfg=Green
" LSP Install
	Plug 'williamboman/nvim-lsp-installer'

" COC (syntax highlight & etc)
"Plug 'neoclide/coc.nvim', {'branch': 'release'} 

" Themes
Plug 'jaredgorski/spacecamp'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sainnhe/sonokai'
Plug 'bluz71/vim-moonfly-colors'
Plug 'srcery-colors/srcery-vim'
Plug 'franbach/miramare'
Plug 'joshdick/onedark.vim'
Plug 'sickill/vim-monokai'
Plug 'fxn/vim-monochrome'
Plug 'Jorengarenar/vim-darkness'

" Initialize plugin system
call plug#end()

" Current theme
colorscheme monochrome

" Set options
set nu!
set ttyfast " fast scroll
set autoindent
set incsearch " instant search
set mouse=a "soy mouse usage

" Transparency (forsenCD)
hi Normal  guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE

" Funcions

" I rember
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" keybinds
" change splits with vim bindings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" change size of splits with the keyboard arrows 
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" soy saving
map <C-s> :w<CR>


