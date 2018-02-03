" Neovim Init.vim
" Arden Rasmussen @ 2018

runtime! debian.vim
" Plugins Installation {{{
" =============================================================================
call plug#begin('~/.config/nvim/Plugged')

" Language Support {{{

" A {{{
Plug 'pearofducks/ansible-vim'          " Ansible
Plug 'kylef/apiblueprint.vim'           " ApiBlueprint
Plug 'vim-scripts/applescript.vim'      " AppleScript
Plug 'sudar/vim-arduino-syntax'         " Arduino
Plug 'asciidoc/vim-asciidoc'            " AsciiDoc
Plug 'hnamikaw/vim-autohotkey'          " AutoHotKey
" }}}
" B {{{
Plug 'jwalton512/vim-blade'             " Blade
" }}}
" C {{{
Plug 'octol/vim-cpp-enhanced-highlight' " C++
Plug 'vim-jp/vim-cpp'                   " C/C++
Plug 'isobit/vim-caddyfile'             " CaddyFile
Plug 'hellerve/carp-vim'                " Carp
Plug 'mtscout6/vim-cjsx'                " CJSX
Plug 'guns/vim-clojure-static'          " Clojure
Plug 'pboettch/vim-cmake-syntax'        " CMake
Plug 'kchmck/vim-coffee-script'         " CoffeeScript
Plug 'elubow/cql-vim'                   " CQL
Plug 'victoredwardocallaghan/cryptol.vim' " Cryptol
Plug 'rhysd/vim-crystal'                " Crystal
Plug 'tpope/vim-cucumber'               " Cucumber
" }}}
" D {{{
Plug 'dart-lang/dart-vim-plugin'        " Dart
" }}}
" E {{{
Plug 'elixir-editors/vim-elixir'        " Elixier
Plug 'ElmCast/elm-vim'                  " Elm
Plug 'yalesov/vim-ember-script'         " EmberScript
Plug 'yalesov/vim-emblem'               " Emblem
Plug 'vim-erlang/vim-erlang-runtime'    " Erlang
" }}}
" F {{{
Plug 'dag/vim-fish'                     " Fish
Plug 'fsharp/vim-fsharp'                " F#
" }}}
" G {{{
Plug 'tpope/vim-git'                    " Git
Plug 'tikhomirov/vim-glsl'              " GLSL
Plug 'maelvalais/gmpl.vim'              " GMPL
Plug 'vim-scripts/gnuplot-syntax-highlighting' " GNUPlot
Plug 'fatih/vim-go'                     " Go
Plug 'vim-scripts/groovy.vim'           " Groovy
" }}}
" H {{{
Plug 'sheerun/vim-haml'                 " Haml
Plug 'mustache/vim-mustache-handlebars' " Handlebars
Plug 'neovimhaskell/haskell-vim'        " Haskell
Plug 'yaymukund/vim-haxe'               " Haxe
Plug 'othree/html5.vim'                 " HTML
" }}}
" I {{{
Plug 'PotatoesMaster/i3-vim-syntax'     " i3
" }}}
" J {{{
Plug 'glanotte/vim-jasmine'             " Jasmine
Plug 'pangloss/vim-javascript'          " JavaScript
Plug 'martinda/Jenkinsfile-vim-syntax'  " Jenkins
Plug 'GutenYe/json5.vim'                " Json5
Plug 'elzr/vim-json'                    " Json
Plug 'briancollins/vim-jst'             " Jst
Plug 'mxw/vim-jsx'                      " Jsx
Plug 'JuliaEditorSupport/julia-vim'     " Julia
" }}}
" K {{{
Plug 'udalov/kotlin-vim'                " Kotlin
" }}}
" L {{{
Plug 'lervag/vimtex'                    " Latex
Plug 'groenewege/vim-less'              " LESS
Plug 'tpope/vim-liquid'                 " Liquid
Plug 'kovisoft/slimv'                   " Lisp
Plug 'gkz/vim-ls'                       " LiveScript
Plug 'tbastos/vim-lua'                  " Lua
" }}}
" M {{{
Plug 'sophacles/vim-bundle-mako'        " Mako
Plug 'plasticboy/vim-markdown'          " Markdown
Plug 'rsmenon/vim-mathematica'          " Mathematica
" }}}
" N {{{
Plug 'chr4/nginx.vim'                   " Nginx
Plug 'zah/nim.vim'                      " Nim
Plug 'LnL7/vim-nix'                     " Nix
" }}}
" O {{{
Plug 'b4winckler/vim-objc'              " Objective C
Plug 'jrk/vim-ocaml'                    " Ocaml
Plug 'vim-scripts/octave.vim--'         " Octave
Plug 'petRUShka/vim-opencl'             " OpenCL
" }}}
" P {{{
Plug 'vim-perl/vim-perl'                " Perl
Plug 'exu/pgsql.vim'                    " PGSQL
Plug 'StanAngeloff/php.vim'             " PHP
Plug 'aklt/plantuml-syntax'             " Plantuml
Plug 'PProvost/vim-ps1'                 " PowerShell
Plug 'uarun/vim-protobuf'               " Protobuf
Plug 'digitaltoad/vim-pug'              " Pug
Plug 'voxpupuli/vim-puppet'             " Puppet
Plug 'purescript-contrib/purescript-vim' " PureScript
Plug 'python-mode/python-mode'          " Python
" }}}
" Q {{{
Plug 'peterhoeg/vim-qml'                " QML
" }}}
" R {{{
Plug 'jalvesaq/nvim-r'                  " R
Plug 'wlangstroth/vim-racket'           " Racket
Plug 'jneen/ragel.vim'                  " Ragel
Plug 'IN3D/vim-raml'                    " Raml
Plug 'sheerun/rspec.vim'                " RSpec
Plug 'gu-fan/riv.vim'                   " rST
Plug 'vim-ruby/vim-ruby'                " Ruby
Plug 'rust-lang/rust.vim'               " Rust
" }}}
" S {{{
Plug 'derekwyatt/vim-sbt'               " SBT
Plug 'derekwyatt/vim-scala'             " Scala
Plug 'cakebaker/scss-syntax.vim'        " SCSS
Plug 'slim-template/vim-slim'           " Slim
Plug 'slime-lang/vim-slime-syntax'      " Slime
Plug 'tomlion/vim-solidity'             " Solidity
Plug 'wavded/vim-stylus'                " Stylus
Plug 'keith/swift.vim'                  " Swift
Plug 'baskerville/vim-sxhkdrc'          " Sxhkd
Plug 'kurayama/systemd-vim-syntax'      " Systemd
" }}}
" T {{{
Plug 'hashivim/vim-terraform'           " Terraform
Plug 'timcharper/textile.vim'           " Textile
Plug 'solarnz/thrift.vim'               " Thrift
Plug 'keith/tmux.vim'                   " Tmux
Plug 'wellbredgrapefruit/tomdoc.vim'    " TomDoc
Plug 'cespare/vim-toml'                 " TOML
Plug 'lumiliet/vim-twig'                " Twig
Plug 'leafgarland/typescript-vim'       " TypeScript
" }}}
" V {{{
Plug 'arrufat/vala.vim'                 " Vala
Plug 'vim-scripts/vbnet.vim'            " VB.NET
Plug 'smerrill/vcl-vim-plugin'          " VCL
Plug 'vifm/vifm.vim'                    " vifm
Plug 'lepture/vim-velocity'             " Velocity
Plug 'posva/vim-vue'                    " Vue
" }}}
" X {{{
Plug 'vim-scripts/XSLT-syntax'          " XSLT
" }}}
" Y {{{
Plug 'stephpy/vim-yaml'                 " YAML
Plug 'sheerun/vim-yardoc'               " YARD
" }}}

" }}}

" Utilities {{{

" Git {{{
Plug 'tpope/vim-fugitive'
" }}}
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
" Commenter {{{
" Plug 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
" }}}
" Auto Pairs {{{
Plug 'jiangmiao/auto-pairs'
" }}}

" }}}

" Enviornment {{{

" Airline {{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}
" Search {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" }}}
" NERDTree {{{
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
" }}}
" Gutter {{{
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mhinz/vim-signify'
" }}}
" Tagbar {{{
Plug 'majutsushi/tagbar'
" }}}
" Completion {{{
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all --system-libclang' }
" }}}
" Formatter {{{
Plug 'Chiel92/vim-autoformat'
" }}}
" Preview {{{
Plug 'suan/vim-instant-markdown'
" }}}

" }}}

" WorkSpace {{{

" Focus {{{
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" }}}

" }}}

" Color Scheme {{{
Plug 'isotope-theme/vim'
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
" Code Folding {{{
nnoremap <space> za
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
au BufRead,BufNew *.{lua,vim,css,xdefault,zsh}
      \ set foldmethod=marker
au BufRead,BufNew *.vim
      \ set foldlevel=0
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
" au BufNewFile,BufRead *.{md,rst,tex}
"       \ set background=light
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
" Latex {{{
let g:tex_flavor="latex"
" }}}
" Line Length {{{
set colorcolumn=80
au BufNewFile,BufRead *.{md,rst,tex}
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
au BufNewFile,BufRead *.{md,rst,text}
      \ let g:airline_isotope_bg='light'
let g:airline_theme='isotope'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
" }}}
" Auto Format {{{
au BufWrite *.{cpp,hpp,c,h,json,js,css,py,md} :Autoformat
let g:formatter_yapf_style='google'
" }}}
" C++ Highlighting {{{
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_experimental_template_highlight=1
" }}}
" Commenter {{{

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
" Incsearch {{{
let g:incsearch#auto_nohlsearch=1
" }}}
" Supertab {{{
let g:SuperTabDefaultCompletionType='<C-n>'
" }}}
" UltiSnips {{{
let g:snips_author="Arden Rasmussen"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" }}}
" VimTex {{{
let g:vimtex_fold_enabled=1
" }}}
" Window Swap {{{
let g:windowswap_map_keys=0
" }}}
" You Complete Me {{{
let g:ycm_key_list_select_completion=['<C-n>', '<Down']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_complete_in_comments = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tag_files = 1
" let g:ycm_filetype_whitelist = { 'cpp': 1, 'hpp' : 1, 'python': 1, 'c' : 1 , 'h' : 1 }
let g:ycm_show_diagnostics_ui = 0
" }}}

" }}}

" Functions {{{
" =============================================================================

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


" }}}

" au BufEnter *.zsh-theme set ft=zsh
