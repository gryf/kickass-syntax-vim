KickAssembler syntax for Vim
============================

This is Vim syntax for the great `Kick Assembler`_ C64 cross/macro assembler.

This repository is hosted on BitBucket_, and mirrored on GitHub_.

Installation
------------

To install, place ``syntax/kickass.vim`` file in ``~/.vim/syntax`` (\*nix/Mac)
or in ``$VIMRUNTIME/syntax`` on Windows or just use some Vim package manager,
like NeoBundle_, Pathogen_ or Vundle_, and than issue command:

.. code:: vim

   :set filetype=kickass

You can also add to your vimrc file autocommand:

.. code:: vim

    autocmd BufRead *.asm set filetype=kickass

From now on, all files with extension 'asm' will have brand new kickass
syntax.

Enjoy.

.. _Kick Assembler: http://www.theweb.dk/KickAssembler/Main.php
.. _Pathogen: https://github.com/tpope/vim-pathogen
.. _Vundle: https://github.com/gmarik/Vundle.vim
.. _NeoBundle: https://github.com/Shougo/neobundle.vim
.. _BitBucket: https://bitbucket.org/gryf/kickass-syntax-vim
.. _GitHub: https://bitbucket.org/gryf/kickass-syntax-vim
