##########
VIM CONFIG
##########

This is my personal vim configuration, with all of the used plugins included as
part of the repository.

*****************
Table Of Contents
*****************

.. contents::

*******
Install
*******

To install simply copy and paste:

..

  git clone https://github.com/Nedra1998/vim

This will clone the git repository to your :code:`.vim` folder.

*******
Plugins
*******

This is a compleate list of plugins for this vim configuration.

+------------------------+-----------------------------------------------------+
| Plugin                 | Link                                                |
+========================+=====================================================+
| CtrlP                  | https://github.com/ctrlpvim/ctrlp.vim               |
+------------------------+-----------------------------------------------------+
| GV                     | https://github.com/junegunno/gv.vim                 |
+------------------------+-----------------------------------------------------+
| IncSearch Fuzzy        | https://github.com/haya14busa/incsearch-fuzzy.vim   |
+------------------------+-----------------------------------------------------+
| IncSearch              | https://github.com/haya14busa/incsearch.vim         |
+------------------------+-----------------------------------------------------+
| NerdTree               | https://github.com/scrooloose/nerdtree              |
+------------------------+-----------------------------------------------------+
| NerdTree Git Plugin    | https://github.com/Xuyuanp/nerdtree-git-plugin      |
+------------------------+-----------------------------------------------------+
| Python Syntax          | https://github.com/hdima/python-syntax              |
+------------------------+-----------------------------------------------------+
| SimpylFold             | https://github.com/tmhedberg/SimpylFold             |
+------------------------+-----------------------------------------------------+
| SuperTab               | https://github.com/ervandew/supertab                |
+------------------------+-----------------------------------------------------+
| Syntastic              | https://github.com/vim-syntastic/syntastic          |
+------------------------+-----------------------------------------------------+
| TagBar                 | https://github.com/majutsushi/tagbar                |
+------------------------+-----------------------------------------------------+
| TaskList               | https://github.com/vim-scripts/TaskList.vim         |
+------------------------+-----------------------------------------------------+
| UltiSnips              | https://github.com/SirVer/ultisnips                 |
+------------------------+-----------------------------------------------------+
| Airline                | https://github.com/vim-airline/vim-airline          |
+------------------------+-----------------------------------------------------+
| Airline Themes         | https://github.com/vim-airline/vim-airline-themes   |
+------------------------+-----------------------------------------------------+
| Solarized              | https://github.com/altercation/vim-colors-solarized |
+------------------------+-----------------------------------------------------+
| Commentary             | https://github.com/tpope/vim-commentary             |
+------------------------+-----------------------------------------------------+
| C++ Enhanced Highlight | https://github.com/octol/vim-cpp-enhanced-highlight |
+------------------------+-----------------------------------------------------+
| Fugitive               | https://github.com/tpope/vim-fugitive               |
+------------------------+-----------------------------------------------------+
| GitGutter              | https://github.com/airblade/vim-gitgutter           |
+------------------------+-----------------------------------------------------+
| Vim Snippets           | https://github.com/honza/vim-snippets               |
+------------------------+-----------------------------------------------------+
| Surround               | https://github.com/tpope/vim-surround               |
+------------------------+-----------------------------------------------------+
| VimTex                 | https://github.com/lervag/vimtex                    |
+------------------------+-----------------------------------------------------+
| Window Swap            | https://github.com/wesQ3/vim-windowswap             |
+------------------------+-----------------------------------------------------+
| YouCompleteMe          | https://github.com/Valloric/YouCompleteMe           |
+------------------------+-----------------------------------------------------+

*****
Usage
*****

Code Folding
============

+-------+-----------+
| Key   | Action    |
+=======+===========+
| Space | za (Fold) |
+-------+-----------+

Fugitive
========

+-------------+-----------------+
| Key         | Action          |
+=============+=================+
| <leader>gl  | git log --graph |
+-------------+-----------------+
| <leader>gst | git status      |
+-------------+-----------------+
| <leader>ga  | git add         |
+-------------+-----------------+
| <leader>gc  | git commit      |
+-------------+-----------------+
| <leader>gp  | git push        |
+-------------+-----------------+

IncSearch
=========

+-----+----------------------+
| Key | Action               |
+=====+======================+
| /   | incsearch-forward    |
+-----+----------------------+
| ?   | incsearch-backward   |
+-----+----------------------+
| g/  | incsearch-stay       |
+-----+----------------------+
| z/  | incsearch-fuzzy-/    |
+-----+----------------------+
| z?  | incsearch-fuzzy-?    |
+-----+----------------------+
| zg/ | incsearch-fuzzy-stay |
+-----+----------------------+

Graphical Line Movement
=======================

+-----------+--------------+
| Key       | Action       |
+===========+==============+
| <leader>w | ToggleWrap() |
+-----------+--------------+

Split Navigation
================

+--------+----------------------+
| Key    | Action               |
+========+======================+
| Ctrl-j | Move to window below |
+--------+----------------------+
| Ctrl-k | Move to window above |
+--------+----------------------+
| Ctrl-l | Move to window right |
+--------+----------------------+
| Ctrl-h | Move to window left  |
+--------+----------------------+

Tab Navigation
==============

+-------+--------------+
| Key   | Action       |
+=======+==============+
| <Tab> | Next Tab     |
+-------+--------------+
| L     | Next Tab     |
+-------+--------------+
| H     | Previous Tab |
+-------+--------------+
| t     | New Tab      |
+-------+--------------+

Window Resizing
===============

+-----------+---------------------+
| Key       | Action              |
+===========+=====================+
| <leader>l | +5 to window width  |
+-----------+---------------------+
| <leader>h | -5 to window width  |
+-----------+---------------------+
| <leader>j | +5 to window height |
+-----------+---------------------+
| <leader>k | -5 to window height |
+-----------+---------------------+

Window Swap
===========

+------------+------------------+
| Key        | Action           |
+============+==================+
| <leader>yw | MarkWindowSwap() |
+------------+------------------+
| <leader>pw | DoWindowSwap()   |
+------------+------------------+
| <leader>ww | EasyWindowSwap() |
|            | Copy/Paste       |
+------------+------------------+

YouCompleteMe
=============

+-----------+------------------+
| Key       | Action           |
+===========+==================+
| <leader>g | Go to definition |
+-----------+------------------+


