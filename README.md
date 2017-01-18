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
extension. Those are ERB templates containing dynamic configuration, mostly to
prompt the user for details like username or email address.


Installation
------------

Run the following commands:

    $ git clone --recursive git://github.com/vinc/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ rake install

And later to sync the repo:

    $ git pull --rebase
    $ git submodule update --recursive --remote


Thanks
------

* Ryan Bates and his [dotfiles repository](https://github.com/ryanb/dotfiles)


Copyright
---------

Copyright (C) 2013-2017 Vincent Ollivier. Released under the MIT License.
