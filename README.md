Rulerbar
========

Rulebar is a horizontal progress indicator plugin for vim displayed
in the statusline.

For documentation, go to the [reference manual](https://raw.github.com/zenzike/vim-rulerbar/master/doc/rulerbar.txt),
which is best viewed in vim after installation:

    :h rulerbar

In short, rulerbar will replace the standard ruler output with something
that looks like this:

                         37,16    ┈┈┈███████┈ 78% ~

This displays the current window position within a buffer.


Install
-------

The recommended way to install rulerbar is to use the vim
[pathogen](http://github.com/tpope/vim-pathogen) plugin, and
to clone rulerbar into your bundle directory:

    cd .vim/bundle
    git clone git://github.com/zenzike/vim-rulerbar.vim

License
-------

Rulerbar is released under a BSD3 license.
