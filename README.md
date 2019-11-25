Vinc .dotfiles
==============

This repository provides everything I need to feel at home in a terminal.

![screenshot](https://vinc.cc/desktop.png)

Synopsis
--------

The following sofware are configured:

* bspwm + lemonbar (window manager)
* alacritty (terminal emulator)
* zsh + pure prompt (shell)
* fzf (command line fuzzy finder)
* autojump (fast filesystem navigator)

* vim (text editor)
* git (content tracker)
* asdf (language runtime version manager)

* elinks (command line browser)
* mutt (command line mail user agent)
* irssi (command line irc client)

Customized with the following particularities:

* Gruvbox color scheme
* Dvorak keyboard layout

Everything starting with an underscore in the root directory will be symlinked
to the user's home directory, with the exception of files ending with an `erb`
extension. Those are ERB templates containing dynamic configuration, mostly to
prompt the user for details like username or email address.


Installation
------------

Run the following commands:

    $ git clone --recursive git://github.com/vinc/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ rake

Optional steps:

    $ ~/.fzf/install
    $ vim +PluginInstall +qall

And later to sync the repo:

    $ git pull --rebase
    $ git submodule update --recursive --remote

Installing ruby:

    $ asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
    $ asdf install ruby 2.6.2
    $ gem install rake

Installing node:

    $ asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    $ bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
    $ asdf install nodejs 10.15.3


Thanks
------

* Ryan Bates and his [dotfiles repository](https://github.com/ryanb/dotfiles)


Copyright
---------

Copyright (c) 2013-2019 Vincent Ollivier. Released under the MIT License.
