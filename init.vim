" Neovim 'init.vim'
" Arden Rasmussen
" This is the neovim init.vim file that is used by Arden Rasmussen.

runtime! debian.vim

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
Plug '~/Programming/vim/vim-flatui'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-solarized8'

" Enviorment
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'mkitt/tabline.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mhinz/vim-signify'
Plug 'junegunn/goyo.vim'
Plug 'majutsushi/tagbar'

" Checkers
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mzlogin/vim-markdown-toc'

" Search
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

" Motion
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

" F Keys
" =====================================

map <F2> :set spell! spelllang=en_us<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :Autoformat<CR>
imap <F5><c-o> :Autoformat<CR>
map <F12> :Goyo<CR>

" Ale
" =====================================
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Code Folding
" =====================================
nnoremap <space> za

" Copy/Paste
" =====================================
imap <C-v> <C-o>"+p
noremap <C-v> "+p"<CR>

" Fugitive
" =====================================
noremap <silent> <Leader>gst :Gstatus<CR>
noremap <silent> <leader>ga :Gwrite<CR>
noremap <silent> <leader>gc :Gcommit<CR>
noremap <silent> <leader>gp :Gpush<CR>

" Incsearch
" =====================================
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Movement
" =====================================
noremap <A-l> 5l
noremap <A-h> 5h
noremap <A-k> 5k
noremap <A-j> 5j

" NERD Commenter
" =====================================
nnoremap <leader>\ :call NERDComment(0,"toggle")<CR>
vnoremap <leader>\ :call NERDComment(0,"toggle")<CR>

" Split navigations
" =====================================
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Tab Navigation
" =====================================
nnoremap <C-I> :tabnext<CR>
inoremap <C-I> <Esc>:tabnext<CR>i
nnoremap t :tabnew<CR>

" TOC Markdown Generation
" =====================================
nnoremap <leader>toc :GenTocGFM<CR>

" Window Resizing
" =====================================
nnoremap <silent> <leader>l :vertical resize +5<CR>
nnoremap <silent> <leader>h :vertical resize -5<CR>
nnoremap <silent> <leader>j :resize +5<CR>
nnoremap <silent> <leader>k :resize -5<CR>

" Window Swap
" =====================================
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" Vim/Nvim Settings
" =============================================================================

" Auto Format
" =====================================
au BufWrite *.{cpp,hpp,c,h,json,js,css,html,md} :Autoformat

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
set hlsearch
let python_highlight_all=1
set background=dark
colorscheme flatui
" colorscheme solarized8_dark
au BufNewFile,BufRead *.{md,rst,tex}
      \ set background=light
" au BufNewFile,BufRead *.{md,rst,tex}
      " \ colorscheme solarized8_light

" Completion
" =====================================
set completeopt-=preview

" Conceal
" =====================================
set conceallevel=2

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
set colorcolumn=80
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

" Status Line
" =====================================
set laststatus=2

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

" Incsearch
" =====================================
let g:incsearch#auto_nohlsearch = 1

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

" TagBar
" =====================================
let g:tagbar_type_asciidoc = {
    \ 'ctagstype' : 'asciidoc',
    \ 'kinds' : [
        \ 'h:table of contents',
        \ 'a:anchors:1',
        \ 't:titles:1',
        \ 'n:includes:1',
        \ 'i:images:1',
        \ 'I:inline images:1'
    \ ],
    \ 'sort' : 0
\ }
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.config/nvim/Extensions/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : '~/.config/nvim/Extensions/rst2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

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

" Goyo
" =====================================

function! s:goyo_enter()
  ALEToggle
endfunction

function! s:goyo_leave()
  ALEToggle
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Incsearch
" =====================================
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
