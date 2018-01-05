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
Plug 'elzr/vim-json'
Plug 'vim-scripts/DoxyGen-Syntax'
Plug 'chrisbra/csv.vim'
Plug 'tbastos/vim-lua'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'kien/rainbow_parentheses.vim'
Plug 'rust-lang/rust.vim'
Plug 'keith/swift.vim'

" Color Schemes
" Plug 'chriskempson/base16-vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'Nedra1998/vim-airline-themes'
" Plug 'lifepillar/vim-solarized8'
" Plug 'dracula/vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'rakr/vim-one'
" Plug 'chrisbra/Colorizer'

" Enviorment
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'mkitt/tabline.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mhinz/vim-signify'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/TaskList.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'digitalrounin/vim-yaml-folds'

" Checkers
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mzlogin/vim-markdown-toc'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'heavenshell/vim-pydocstring'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'

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
Plug 'jiangmiao/auto-pairs'

" Utilities
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'

" Development
" Plug '~/Programming/vim/vim-flatui'
" Plug '~/Programming/vim/vim-laboris'
" Plug '~/Programming/vim/vim-material'
Plug '~/Programming/isotope/vim'

" Plug 'gerw/vim-HiLinkTrace'

call plug#end()

" Key Mappings
" =============================================================================

" F Keys
" =====================================
nmap <silent> <C-y> <Plug>(pydocstring)

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
nnoremap <leader>fc :g/\/\*/foldc<CR>

" Copy/Paste
" =====================================
imap <C-v> <C-o>"+p
noremap <C-v> "+p"<CR>

" Easymotion
" =====================================
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

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
map e/ <Plug>(incsearch-easymotion-/)
map e? <Plug>(incsearch-easymotion-?)
map eg/ <Plug>(incsearch-easymotion-stay)
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
nnoremap <C-\> :call NERDComment(0,"toggle")<CR>
vnoremap <C-\> :call NERDComment(0,"toggle")<CR>

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
" au BufWrite *.{cpp,hpp,c,h,json,js,css,py,md} :Autoformat
" let g:formatdef_lua_formatter = '"luaformatter -a"'
" let g:formatters_lua = ['lua_formatter']

" Code Folding
" =====================================
set foldmethod=syntax
set foldlevel=99
au BufRead,BufNew *.{lua,vim,css,xdefault}
      \ set foldmethod=marker
au BufRead,BufNew *.{html}
      \ set foldmethod=indent

" Color Scheme
" =====================================
if has("termguicolors")
  set termguicolors
endif
syntax enable
set hlsearch
let python_highlight_all=1

let g:material_primary = "blue"
" let g:material_secondary = "red"

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark
colorscheme isotope
" au BufNewFile,BufRead *.{md,rst,tex}
      " \ set background=light

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

" Latex
" =====================================
let g:tex_flavor = "latex"


" Line Length
" =====================================
set colorcolumn=80
au BufNewFile,BufRead *.py set colorcolumn=100
au BufNewFile,BufRead *.{md,rst,tex}
      \ set textwidth=79

" Misc
" =====================================
set t_Co=256
set updatetime=250
set timeout ttimeoutlen=50

" Mouse
" =====================================
set mouse=

" Numbering
" =====================================
set number relativenumber

" Shell
" =====================================

if $SHELL =~ 'bin/fish'
  set shell=/bin/bash
endif

" Show Matching
" =====================================
set showmatch

" Status Line
" =====================================
set noruler
set statusline=%t
set laststatus=2

" Tab
" =====================================
set tabstop=8 softtabstop=0 shiftwidth=2 expandtab smarttab
au BufNewFile,BufRead *.py
      \ set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
au BufNewFile,BufRead *.rst
      \ set tabstop=8 softtabstop=3 shiftwidth=3 expandtab


" Plugin Settings
" =============================================================================

" Airline
" =====================================
let g:airline_isotope_bg='dark'
" au BufNewFile,BufRead *.{md,rst,tex}
      " \ let g:airline_isotope_bg='light'
let g:airline_theme = 'isotope'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#stl_format_err = "Err: #%e"
autocmd BufEnter * AirlineRefresh

" Ale
" =====================================
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
let g:ale_sign_style_error = 'S>'
let g:ale_sign_style_warning = 's>'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_pylint_args = '--py3k'
let g:ale_linters = {
      \ 'asm': [] 
      \ }
" let g:ale_linters = {
      " \ 'python': ['flake8', 'mypy', 'pylint3', 'autopep8', 'yapf']
      " \ }
" let g:ale_lint_on_text_changed = 'normal'

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

" Doxygen
" =====================================
au BufNewFile,BufRead *.hpp
      \ set syntax=cpp.doxygen


" Emmet
" =====================================
let g:user_emmet_leader_key='<C-z>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" GoogleTest
" =====================================
let g:gtest#gtest_command = './unit-test'
let g:gtest#highlight_failing_tests = 1

" Incsearch
" =====================================
let g:incsearch#auto_nohlsearch = 1

" Markdown
" =====================================
let g:vim_markdown_math = 1

" Multicursor
" =====================================
let g:multi_cursor_exit_from_insert_mode = 0

" NERD Commenter
" =====================================
let g:NERDSpaceDelims = 2

" Python Highlighting settings
" =====================================
let python_highlight_all = 1

" Supertab
" =====================================
let g:SuperTabDefaultCompletionType = '<C-n>'

" Tablemode
" =====================================
au BufRead,BufNew *.{md}
      \ let g:table_mode_corner='|'
au BufRead,BufNew *.{rst}
      \ let g:table_mode_corner_corner='+'
au BufRead,BufNew *.{rst}
      \ let g:table_mode_header_fillchar='='

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
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

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

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
