Vinc Dotfiles
=============

This repository provides everything I need to feel at home in a terminal.


Synopsis
--------

I use the following awesome software:

* Git
* Rxvt-unicode
* Vim
* XMonad
* Zsh

Customized with the following particularities:

* Dvorak keyboard layout
* Solarized color scheme

Everything starting with an underscore in the root directory will be symlinked
to the user's home directory, with the exception of files ending with an `erb`
extension. Those are ERB templates containing dynamic configuration that will
be directly generated instead.


Installation
------------

You will need Git, Ruby and Rake:

    $ git clone git://github.com/vinc/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ git submodule init
    $ git submodule update
    $ rake install


Thanks
------

* Ryan Bates and his [dotfiles repository](https://github.com/ryanb/dotfiles)


Copyright
---------

Copyright (C) 2013 Vincent Ollivier. See LICENSE for details.
