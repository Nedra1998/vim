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
Plug 'jeffkreeftmeijer/vim-numbertoggle'

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

" Vim/Nvim Settings
" =============================================================================

" Auto Format
" =====================================
au BufWrite *.{cpp,hpp,c,h,json,js,py,css,html,md} :Autoformat

" Code Folding
" =====================================
set foldmethod=syntax
set foldlevel=99

" Color Scheme
" =====================================
if has("termguicolors")
  set termguicolors
endif
syntax enable
set background=dark
let python_highlight_all=1
let g:enable_bold_font = 1
let g:enable_italic_font = 1
let base16colorspace=256
colorscheme base16-flat
autocmd BufEnter *.{tex,md,rst} set background=light
autocmd BufEnter *.{tex,md,rst} colorscheme PaperColor

" Completion
" =====================================
set completeopt-=preview

" Encoding
" =====================================
set encoding=utf-8

" Indentation
" =====================================
filetype plugin indent on

" Jump to Last Position
" =====================================
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Line Length
" =====================================
au BufNewFile,BufRead *.{md,rst,tex}
			\ set textwidth=79

" Misc
" =====================================
set laststatus=2
set t_Co=256
set updatetime=250
set timeout ttimeoutlen=50

" Numbering
" =====================================
set number relativenumber

" Show Matching
" =====================================
set showmatch

" Tab
" =====================================
set tabstop=8 softtabstop=0 shiftwidth=2 expandtab smarttab
au BufNewFile,BufRead *.py
      \ set tabstop=8 softtabstop=4 shiftwidth=4 expandtab


" Plugin Settings
" =============================================================================

" Airline
" =====================================
let g:airline_theme = 'base16_flat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#stl_format_err = "Err: #%e"

" Ale
" =====================================
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Auto Format
" =====================================
let g:formatter_yapf_style='google'

" Cpp Highlighting
" =====================================
let g:cpp_class_scope_hightlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Ctrlp
" =====================================
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" EasyMovement
" =====================================
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Markdown
" =====================================
let g:vim_markdown_math = 1

" NERD Commenter
" =====================================
let g:NERDSpaceDelims = 2

" Python Highlighting settings
" =====================================
let python_highlight_all = 1

" Supertab
" =====================================
let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnips
" =====================================
let g:snips_author = "Arden"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" VimText
" =====================================
let g:vimtex_fold_enabled = 1

" Window Swap
" =====================================
let g:windowswap_map_keys = 0

" You Complete Me
" =====================================
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_complete_in_comments = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_filetype_whitelist = { 'cpp': 1, 'hpp' : 1, 'python': 1, 'c' : 1 , 'h' : 1 }
let g:ycm_show_diagnostics_ui = 0


" Functions
" =============================================================================







