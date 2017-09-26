" Neovim 'init.vim'
" Arden Rasmussen
" This is the neovim init.vim file that is used by Arden Rasmussen.


" Plugins Installation
" =============================================================================
call plug#begin('~/.config/nvim/Plugged')

" Languages
Plug 'hdima/python-syntax'
Plug 'octol/vim-cpp-enhanced-highlight' 
Plug 'dag/vim-fish'
Plug 'tikhomirov/vim-glsl'
Plug 'plasticboy/vim-markdown'
Plug 'petRUShka/vim-sage'
Plug 'lervag/vimtex'

" Color Schemes
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'

" Enviorment
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'mkitt/tabline.vim'

" Checkers
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Search
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

" Motion
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-unimpaired'
Plug 'wesQ3/vim-windowswap'

" Editor Tools
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'

" Utilities
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'

call plug#end()

" Key Mappings
" =============================================================================

imap <C-v> <C-o>"+p
noremap <C-v> "+p"<CR>
