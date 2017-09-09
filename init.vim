runtime! debian.vim

execute pathogen#infect()
call pathogen#helptags()

set timeout ttimeoutlen=50


"==========================>>> KEY MAPS <<<========================="

" F-Keys mapings
map <F2> :set spell! spelllang=en_us<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :call Format()<CR>
imap <F5><c-o> :call Format()<CR>
map <F6> :SyntasticToggleMode<CR>
map <F7> :call Make()<CR>
map <F12> :Goyo<CR>

" Code folding
nnoremap <space> za

" Clipboard Pasting
imap <C-v> <C-o>"+p
noremap <C-v> "+p"<CR>

" Fugitive
noremap <silent> <Leader>gl :GV --graph --abbrev-commit --decorate --all<CR>
noremap <silent> <Leader>gst :Gstatus<CR>
noremap <silent> <leader>ga :Gwrite<CR>
noremap <silent> <leader>gc :Gcommit<CR>
noremap <silent> <leader>gp :Gpush<CR>

" Incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" Line graphical movement
noremap <silent> <Leader>w :call ToggleWrap()<CR>

" Markdown Toc
nnoremap <leader>toc :GenTocGFM<CR>

" Movement
noremap <A-l> 5l
noremap <A-h> 5h
noremap <A-k> 5k
noremap <A-j> 5j

" NERD Commenter
nnoremap <leader>\ :call NERDComment(0,"toggle")<CR>
vnoremap <leader>\ :call NERDComment(0,"toggle")<CR>

" New line insert
nmap <C-o> o<Esc>

" Split navigations
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Tab Navigation
nnoremap <C-I> :tabnext<CR>
inoremap <C-I> <Esc>:tabnext<CR>i
nnoremap L :tabnext<CR>
nnoremap H :tabprev<CR>
nnoremap t :tabnew<CR>

" Window Resizing
nnoremap <silent> <leader>l :vertical resize +5<CR>
nnoremap <silent> <leader>h :vertical resize -5<CR>
nnoremap <silent> <leader>j :resize +5<CR>
nnoremap <silent> <leader>k :resize -5<CR>

" Window Swap
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" YCM
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"=========================>>> VIM SETTINGS <<<========================="

" Auto format
au BufWrite *.{cpp,hpp,c,h,json,js,py,css,html,html} :Autoformat
let g:formatter_yapf_style='google'

" Code folding
set foldmethod=syntax
set foldlevel=99

" Compleation
set completeopt-=preview

" Conceal
set conceallevel=2

" Encoding
set encoding=utf-8

" Indentation rules
if has("autocmd")
  filetype plugin indent on
endif

" Jump to last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Linelength
au BufNewFile,BufRead *.md
      \ set textwidth=79
au BufNewFile,BufRead *.rst
      \ set textwidth=79
au BufNewFile,BufRead *.tex
      \ set textwidth=79

" Misc
set laststatus=2
set t_Co=256
set updatetime=250

" Numbering
set nu

" Show matching brackets
set showmatch

" Statusline
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" Tab
set tabstop=8 softtabstop=0 shiftwidth=2 expandtab smarttab
au BufNewFile,BufRead *.py
      \ set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
au BufNewFile,BufRead *.tex
      \ set textwidth=79

" Theme
if has("termguicolors")
  set termguicolors
endif
let python_highlight_all=1
let g:enable_bold_font = 1
let g:enable_italic_font = 1
syntax enable
set background=dark
let base16colorspace=256
colorscheme base16-flat

" colorscheme solarized8_dark
autocmd BufEnter *.{tex,md,rst,txt} set background=light
autocmd BufEnter *.{tex,md,rst,txt} colorscheme PaperColor

"=========================>>> EXTENSIONS <<<========================="

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_flat'
" let g:airline_theme = 'solarized'
autocmd BufEnter *.{tex,md,rst,txt} let g:airline_theme = 'papercolor'
autocmd BufEnter *.{tex,md,rst,txt} AirlineRefresh
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#stl_format_err = 'Err: #%e'
let g:airline#extensions#syntastic#stl_format_warn = 'Warn: #%w'

" C++ Highlighting settings
let g:cpp_class_scope_hightlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Colorizer
let g:colorizer_auto_filetype='lua,css,html'

" Commenter


" Ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Indentline Settings
let g:indentLine_setColor = 0
let g:indentLine_char = '|'

" Markdown
let g:vim_markdown_math = 1

" Markdown TOC

" NERD Commenter
let g:NERDSpaceDelims = 2

" Python Highlighting settings
let python_highlight_all = 1

" SimpylFold
let g:SimpylFold_docstring_preview=1

" Solarized
" let g:solarized_termcolors = 256 | 16
" let g:solarized_termtrans = 1 | 0
" let g:solarized_degrade = 0 | 1
" let g:solarized_bold = 1 | 0
" let g:solarized_underline = 1 | 0
" let g:solarized_italic = 1 | 0
" let g:solarized_contrast = "normal"
" let g:solarized_visibility = "normal"

" Startify
let g:startify_custom_header = [
      \ '                                 __         __     ',
      \ '           __                  /''_ `\     /''__`\   ',
      \ '   __  __ /\_\    ___ ___     /\ \L\ \   /\ \/\ \  ',
      \ '  /\ \/\ \\/\ \ /'' __` __`\   \/_> _ <_  \ \ \ \ \ ',
      \ '  \ \ \_/ |\ \ \/\ \/\ \/\ \    /\ \L\ \__\ \ \_\ \',
      \ '   \ \___/  \ \_\ \_\ \_\ \_\   \ \____/\_\\ \____/',
      \ '    \/__/    \/_/\/_/\/_/\/_/    \/___/\/_/ \/___/ ',
      \ '                                                   ',
      \ ]

" Supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

" Syntastic
let g:syntastic_tex_checkers=['chktex', 'proselint']
let g:syntastic_markdown_checkers=['mdl', 'proselint']
let g:syntastic_rst_checkers=['sphinx', 'rstcheck', 'proselint']
let g:syntastic_cpp_checkers=['gcc']

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Wpedantic'
let g:syntastic_cpp_clang_check_post_args = ''
let g:syntastic_cpp_clang_tidy_post_args = ''
let g:syntastic_python_python_exec = '/usr/bin/python3'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u26A0"

" Table Mode
let g:table_mode_corner='|'

" Tagbar
let g:tagbar_type_markdown = {
      \ 'ctagstype': 'markdown',
      \ 'ctagsbin' : '~/.vim/markdown2ctags/markdown2ctags.py',
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
      \ 'ctagsbin' : '~/.vim/rst2ctags/rst2ctags.py',
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

let g:tagbar_type_plaintext = {
      \ 'ctagstype' : 'plaintext',
      \ 'kinds'     : [
      \ 's:sections',
      \ 'g:graphics:0:0',
      \ 'l:labels',
      \ 'r:refs:1:0',
      \ 'p:pagerefs:1:0'
      \ ],
      \ 'sort'    : 0,
      \ }

" UltiSnips
let g:snips_author = "Arden"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" VimText
let g:vimtex_fold_enabled = 1

" Window Swap
let g:windowswap_map_keys = 0

" You Complete Me
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_complete_in_comments = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_filetype_whitelist = { 'cpp': 1, 'hpp' : 1, 'python': 1}
let g:ycm_show_diagnostics_ui = 0


"=========================>>> FUNCTIONS <<<========================="

" Autoformat
function Format()
  if &ft == "cpp"
    call Clang()
  elseif &ft == "python"
    call Yapf()
  endif
endfunction

function Clang()
  let l:lines="all"
  py3f ~/.vim/clang-format.py
endfunction

function Yapf()
  :0,$!yapf
endfunction

" Goyo
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  AirlineRefresh
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Graphical Line Movement
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction

" Make
function Make()
  execute 'silent make | copen'
  execute 'redraw!'
endfunction

" Nerdtree highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" Table Mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
      \ <SID>isAtStartOfLine('\|\|') ?
      \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
      \ <SID>isAtStartOfLine('__') ?
      \ '<c-o>:silent! TableModeDisable<cr>' : '__'
