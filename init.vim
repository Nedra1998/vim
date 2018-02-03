" Neovim Init.vim
" Arden Rasmussen @ 2018

runtime! debian.vim
" Plugins Installation {{{
" ============================================================================
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
Plug 'tomtom/tcomment_vim'
" }}}
" Auto Pairs {{{
Plug 'jiangmiao/auto-pairs'
" }}}

" }}}

" Enviornment {{{

" Airline {{{
Plug 'vim-airline/vim-airline'
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
" Plug 'isotope-theme/vim'
Plug '~/Programming/isotope/vim'
" }}}

call plug#end()
" }}}

" Key Mappings {{{
" ============================================================================
" }}}
nnoremap <space> za
set foldmethod=marker

au BufEnter *.zsh-theme set ft=zsh

syntax enable
set hlsearch
if (empty($TMUX))
	if(has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif
let g:material_primary = "blue"
set background=dark
colorscheme isotope
let g:airline_isotope_bg='dark'
let g:airline_theme = 'isotope'
let g:airline_powerline_fonts = 1
set tabstop=8 softtabstop=0 shiftwidth=2 expandtab smarttab
