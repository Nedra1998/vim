" Neovim Init.vim
" Arden Rasmussen @ 2018

runtime! debian.vim
" Plugins Installation {{{
" =============================================================================
call plug#begin('~/.config/nvim/Plugged')

" Language Support {{{
Plug 'sheerun/vim-polyglot'
" }}}

" Utilities {{{

" KeyControl {{{
Plug 'ervandew/supertab'
" }}}
" Motion {{{
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-unimpaired'
Plug 'wesQ3/vim-windowswap'
" }}}
" Search {{{
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
" }}}
" Snippets {{{
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" }}}
" todo {{{
Plug 'jontrainor/TaskList.vim'
" }}}
" Commenter {{{
" Plug 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
" }}}
" Auto Pairs {{{
Plug 'jiangmiao/auto-pairs'
" }}}
" Lorem {{{
Plug 'vim-scripts/loremipsum'
" }}}
" Table {{{
Plug 'dhruvasagar/vim-table-mode'
" }}}
" Colors {{{
Plug 'chrisbra/Colorizer'
" }}}

" }}}

" Enviornment {{{

" Airline {{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}
" ALE {{{
" Plug 'w0rp/ale'
" }}}
" Search {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" }}}
" NERDTree {{{
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
" }}}
" Gutter {{{
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mhinz/vim-signify'
" }}}
" Tagbar {{{
Plug 'majutsushi/tagbar'
" }}}
" Completion {{{
Plug 'ycm-core/YouCompleteMe', {'do': 'python3 install.py --all'}
Plug 'davidhalter/jedi-vim'
" }}}
" Formatter {{{
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align'
" }}}
" Preview {{{
" Plug 'suan/vim-instant-markdown'
" }}}
" Multi Cursors {{{
Plug 'terryma/vim-multiple-cursors'
" }}}

" }}}

" WorkSpace {{{

" Focus {{{
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" }}}
" FileSwitch{{{
Plug 'vim-scripts/a.vim'
" }}}
" Paren {{{
Plug 'kien/rainbow_parentheses.vim'
" }}}
" WakaTime {{{
Plug 'wakatime/vim-wakatime'
" }}}
" Guides {{{
Plug 'nathanaelkane/vim-indent-guides'
" }}}

" }}}

" Color Scheme {{{
Plug 'isotope-theme/vim'
Plug 'NLKNguyen/papercolor-theme'
" }}}

call plug#end()
" }}}

" Key Mappings {{{
" =============================================================================

" F Keys {{{
map <F2> :set spell! spelllang=en_us<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :Autoformat<CR>
imap <F5><c-o> :Autoformat<CR>
" }}}
" Terminal Mode {{{
tnoremap <Esc> <C-\><C-n>
" }}}
" ALE {{{
nmap <silent> [l <Plug>(ale_previous_wrap)
nmap <silent> ]l <Plug>(ale_next_wrap)
" }}}
" Clipboard {{{
vnoremap <leader>y "+y
nnoremap <leader>y "+y
" }}}
" Code Folding {{{
nnoremap <space> za
au FileType markdown vmap <leader>a :EasyAlign*<BAR><CR>
" }}}
" Commenter {{{
nnoremap <C-\> :TComment<CR>
vnoremap <C-\> :TCommentMaybeInline<CR>
" }}}
" Easymotion {{{
map <leader>f <plug>(easymotion-bd-f)
nmap <leader>f <plug>(easymotion-overwin-f)
nmap s <plug>(easymotion-overwin-f2)
map <leader>L <plug>(easymotion-bd-jk)
nmap <leader>L <plug>(easymotion-overwin-line)
map <leader>w <plug>(easymotion-bd-w)
nmap <leader>w <plug>(easymotion-overwin-w)
" }}}
" Fugitive {{{
noremap <silent> <Leader>gst :Gstatus<CR>
noremap <silent> <leader>ga :Gwrite<CR>
noremap <silent> <leader>gc :Gcommit<CR>
noremap <silent> <leader>gp :Gpush<CR>
" }}}
" FZF {{{
map <C-p> :Files <CR>
map <C-b> :Buffers<CR>
" map <C-w> :Windows<CR>
" }}}
" Incsearch {{{
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
" }}}
" Movement {{{
noremap <A-l> 5l
noremap <A-h> 5h
noremap <A-k> 5k
noremap <A-j> 5j
" }}}
" Split Navigation {{{
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
" }}}
" Tab Navigation {{{
nnoremap <C-I> :tabnext<CR>
inoremap <C-I> <Esc>:tabnext<CR>i
nnoremap t :tabnew<CR>
" }}}
" TaskList {{{
map <leader>t <Plug>TaskList
" }}}
" Window Swap {{{
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
" }}}

" }}}

" Vim Settings {{{
" =============================================================================

" Code Folding {{{
set foldmethod=syntax
set foldlevel=99
au BufRead,BufNew *.{lua,vim,css,xdefault,zsh,sh}
      \ set foldmethod=marker
au BufRead,BufNew *.vim
      \ set foldlevel=0
au BufRead,BufNew Makefile
      \ set foldmethod=marker
au BufRead,BufNew Makefile
      \ set foldlevel=0
au BufRead,BufNew CMakeLists.txt
      \ set foldmethod=marker
" }}}
" Color Scheme {{{
if has("termguicolors")
  set termguicolors
endif
syntax enable
set hlsearch
let g:material_primary="blue"
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
set background=dark
if strftime("%H") > 4 && strftime("%H") <= 18
  au BufNewFile,BufRead *.{md,Rmd,rst,tex}
        \ set background=light
endif
colorscheme isotope
" }}}
" Completion {{{
set completeopt-=preview
" }}}
" Conceal {{{
set conceallevel=2
" }}}
" Encoding {{{
set encoding=utf-8
" }}}
" Indentation {{{
filetype plugin indent on
" }}}
" Jump to Last Position {{{
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" }}}
" PyEnv {{{
" let g:python_host_prog = "~/.pyenv/versions/2.7.14/bin/python"
let g:python3_host_prog = "~/.pyenv/versions/neovim/bin/python"
" let g:python_version = matchstr(system("python --version | cut -f2 -d' '"), '^[0-9]')
" if g:python_version =~ 3
"   let g:python2_host_prog = "/usr/local/bin/python2"
" else
"   let g:python3_host_prog = "/usr/local/bin/python3"
" endif
" }}}
" Latex {{{
let g:tex_flavor="latex"
" }}}
" Line Length {{{
set colorcolumn=80
au BufNewFile,BufRead *.{md,Rmd,rst,tex}
      \ set textwidth=79
" }}}
" Mouse {{{
set mouse=
" }}}
" Numbering {{{
set number relativenumber
" }}}
" Shell {{{
if $SHELL =~ 'bin/fish'
  set shell=/bin/bash
endif
" }}}
" Show Matching {{{
set showmatch
" }}}
" Spelling {{{
syn spell toplevel
" }}}
" Status Line {{{
set noruler
set statusline=%t
set laststatus=2
" }}}
" Tab {{{
set tabstop=8 softtabstop=0 shiftwidth=2 expandtab smarttab
au BufNewFile,BufRead *.py
      \ set softtabstop=4 shiftwidth=4
au BufNewFile,BufRead *.rst
      \ set softtabstop=3 shiftwidth=3
" }}}
" Update {{{
set t_Co=256
set updatetime=250
set timeout ttimeoutlen=50
" }}}

" }}}

" Plugin Settings {{{
" =============================================================================

" Airline {{{
let g:airline_isotope_bg='dark'
if strftime("%H") < 4 || strftime("%H") <= 18
  au BufNewFile,BufRead *.{md,Rmd,rst,text,tex}
        \ let g:airline_isotope_bg='light'
endif
let g:airline_theme='isotope'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tagbar#flags = 'f'
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#wordcount#enabled=1
autocmd BufEnter * AirlineRefresh
" }}}
" ALE {{{
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = 'W>'
let g:ale_sign_style_error = 'S>'
let g:ale_sign_style_warning = 's>'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fix_on_save = 1
let g:ale_fixers = {'python': ['isort', 'yapf', 'trim_whitespace', 'autopep8'], 'rust': ['rustfmt'], 'cmake': ['cmakeformat'], 'javascript': ['prettier']}
let g:ale_linters = { 'cpp': ['ccls', 'clang', 'clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'flawfinder'] }

" Cpp {{{
let g:ale_cpp_clang_executable = 'clang++-5.0'
let g:ale_cpp_clang_options = '-std=c++17 -Wall'
let g:ale_cpp_gcc_executable = 'g++-7'
let g:ale_cpp_gcc_options = '-std=c++17 -Wall'
let g:ale_c_clang_executable = 'clang-5.0'
let g:ale_c_clang_options = '-Wall -lm'
let g:ale_c_gcc_executable = 'gcc-7'
let g:ale_c_gcc_options = '-Wall -lm'
let g:ale_cpp_cppcheck_options = "--enable=all"
" }}}
" Python {{{
" }}}

" }}}
" Auto Format {{{
" au BufWrite *.{cpp,hpp,c,h,json,js,css,py,md} :Autoformat
let g:formatter_yapf_style='google'

let g:formatdef_lua_fmt = '"luafmt -l 80 -i 2 --stdin"'
let g:formatters_lua = ['lua_fmt']
" }}}
" CtrlP{{{
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" }}}
" Emmet {{{
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" }}}
" FZF {{{
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }
" }}}
" GoYo {{{
let g:goyo_width = 80
" }}}
" Incsearch {{{
let g:incsearch#auto_nohlsearch=1
" }}}
" Paren {{{
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = 16
" }}}
" Supertab {{{
let g:SuperTabDefaultCompletionType='<C-n>'
" }}}
" TableMode {{{
let g:table_mode_corner='|'
" }}}
" Tagbar {{{
let g:tagbar_type_rst = {
      \ 'ctagstype': 'rst',
      \ 'ctagsbin' : '~/.config/nvim/scripts/rst2ctags.py',
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
let g:tagbar_type_markdown = {
      \ 'ctagstype': 'markdown',
      \ 'ctagsbin' : '~/.config/nvim/scripts/markdown2ctags.py',
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
" }}}
" UltiSnips {{{
let g:snips_author="Arden Rasmussen"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" }}}
" VimTex {{{
let g:vimtex_fold_enabled=1
let g:vimtex_quickfix_latexlog = {'default' : 0}
let g:vimtex_view_method='zathura'
let g:LatexBox_viewer='zathura'
let g:LatexBox_latexmk_preview_continuously=1
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" }}}
" Window Swap {{{
let g:windowswap_map_keys=0
" }}}
" You Complete Me {{{
let g:ycm_python_binary_path = 'python'
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_complete_in_comments = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tag_files = 1
" let g:ycm_filetype_whitelist = { 'cpp': 1, 'hpp' : 1, 'python': 1, 'c' : 1 , 'h' : 1 }
let g:ycm_show_diagnostics_ui = 0
" }}}

" }}}

" Language Settings {{{
" =============================================================================

" BNF {{{
au bufreadpre,bufnewfile *.bnf set ft=bnf
" }}}
" C++ Highlighting {{{
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
" }}}
" Fortran {{{
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
" }}}
" LBNF {{{
au bufreadpre,bufnewfile *.lbnf set ft=lbnf
" }}}
" Markdown {{{
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
" au BufWrite *.md call MarkdownCompile(1)
" }}}
" Python {{{
let g:python_highlight_all = 1
let g:pymode_python = 'python3'
" }}}

" }}}

" Functions {{{
" =============================================================================

" Note {{{
command! -bang Note :Goyo | Limelight
" }}}
" FZF {{{
function! GFilesFallback()
  let output = system('git rev-parse --show-toplevel')
  let prefix = get(g:, 'fzf_command_prefix', '')
  if v:shell_error == 0
    exec "normal :" . prefix . "GFiles\<CR>"
  else
    exec "normal :" . prefix . "Files\<CR>"
  endif
  return 0
endfunction
" }}}
" Markdown {{{
" let g:toggleMarkdownCompile = 0
" function! MarkdownCompile(...)
"   if a:0 == 1
"     let g:toggleMarkdownCompile = 1 - g:toggleMarkdownCompile
"   endif
"   if g:toggleMarkdownCompile == 1
"     silent !pandoc % -o %<.pdf
"   endif
" endfunction
" command! MarkdownCompile call MarkdownCompile()
" }}}

" }}}
