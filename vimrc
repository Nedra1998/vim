runtime! debian.vim

execute pathogen#infect()
call pathogen#helptags()


"==========================>>> KEY MAPS <<<========================="

" F-Keys mapings
map <F2> :set spell! spelllang=en_us<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :call Format()<CR>
imap <F5><c-o> :call Format()<CR>
map <F6> :SyntasticToggleMode<CR>
map <F7> :call Make()<CR>
map <F12> :w !wc -w<CR>

" Code folding
nnoremap <space> za

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
au BufWrite *.cpp :call Format()
au BufWrite *.hpp :call Format()
au BufWrite *.py :call Format()

" Code folding
set foldmethod=syntax
set foldlevel=99

" Compleation
set completeopt-=preview

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Tab
set tabstop=8 softtabstop=0 shiftwidth=2 expandtab smarttab
au BufNewFile,BufRead *.py
  \ set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
au BufNewFile,BufRead *.tex
  \ set textwidth=79

" Theme
syntax enable
set background=dark
colorscheme solarized


"=========================>>> EXTENSIONS <<<========================="

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1

" C++ Highlighting settings
let g:cpp_class_scope_hightlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Indentline Settings
let g:indentLine_setColor = 0
let g:indentLine_char = '|'

" Nerdtree Highlighting

" Python Highlighting settings
let python_highlight_all = 1

" SimpylFold
let g:SimpylFold_docstring_preview=1

" Solarized
let g:solarized_termcolors = 16 | 256
let g:solarized_termtrans = 1 | 0
let g:solarized_degrade = 0 | 1
let g:solarized_bold = 1 | 0
let g:solarized_underline = 1 | 0
let g:solarized_italic = 1 | 0
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"

" Supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

" Syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Table Mode
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

" Tagbar
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
let g:ycm_filetype_whitelist = { 'cpp': 1, 'hpp' : 1, 'python': 1 }


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
