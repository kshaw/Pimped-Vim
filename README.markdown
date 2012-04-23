Pimped Vim
==========



About
-----

** This is a fork of dorkitude's pimed vim.  I started using his config a while back and wanted to start checking in my changes to make it more personal.  



Getting Started
---------------

**If you're new to vim**, you should really watch all of Derek Wyatt's quirky/awesome tutorial videos [here.]

**If you use git** (and presumably you do, since this is a github README file), the vim plugin Fugitive (included in this repo as a submodule) is a must-have! Watch [these]&nbsp;[vimcasts] to see why.

  [here.]: http://www.derekwyatt.org/vim/vim-tutorial-videos/vim-novice-tutorial-videos/
  [these]: http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
  [vimcasts]: http://vimcasts.org/episodes/fugitive-vim-working-with-the-git-index/


**Installation**

 1. checkout the repo (the `--recursive` will force it to also checkout the submodules):

           git clone --recursive git://github.com/dorkitude/Pimped-Vim.git

 2. go to your home directory:

           cd ~

 3. create symlink called `.vimrc` and point it to `Pimped-Vim/.vimrc`:
 
           ln -s /path/to/Pimped-Vim/.vimrc .vimrc

 4. create symlink called `.vim` and point it to the folder `Pimped-Vim/.vim/`:

           ln -s /path/to/Pimped-Vim/.vim/ .vim

 5. Follow the [installation instructions] for Command-T.  IMHO Command-T is absolutely essential to using vim for a project, and it requires you to have a version of vim compiled with [Ruby support].  Don't skip this!

  [installation instructions]: https://github.com/dorkitude/Pimped-Vim/blob/master/.vim/bundle/Command-T/README.txt
  [Ruby support]: http://stackoverflow.com/questions/3794895/installing-vim-with-ruby-support-ruby


Usage
-----


**Leaving insert mode**

I stole Steve Losh's [Quicker Escaping] shortcut.  If you type `jj` while in insert mode, vim will exit to normal mode.
  [Quicker Escaping]: http://stevelosh.com/blog/2010/09/coming-home-to-vim/#quicker-escaping

**using git via the Fugitive plugin**

While I've used git via the command line for years, I now rarely leave Vim to perform git commands.  To learn how, watch [this] and [this.]

  [this]: http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
  [this.]: http://vimcasts.org/episodes/fugitive-vim-working-with-the-git-index/

  

**Window Movement**

My window motion bindings allow you to do this to move control windows:

 - `CTRL+h` move control to the window to the left
 - `CTRL+j` = move control to the window below
 - `CTRL+k` = move control to the window above
 - `CTRL+l` = move control to the window to the right

(Normally, these would be `^w h`  `^w j`  etc)

**Vim Surround**

This thing is amazing!  It adds a new kind of target called a "surrounding", which means 'the area surrounding the current word'.  Read some usage examples [here.]
  [here.]: http://www.vim.org/scripts/script.php?script_id=1697

**Ack**

[Ack] is the best way to search your codebase for a given pattern.

With my settings, you can just hit `,a` and begin typing a pattern.  Press `enter` to perform the search.  The results will show up in a vim quickfix window, which gives you shortcuts to the file and line of each search result (move your cursor to the desired result and press `enter` to jump to that file/line).

  [Ack]: http://stevelosh.com/blog/2010/09/coming-home-to-vim/#ack


**The NERDtree project drawer**

I have this mapped to F2.  On my Mac, that means I press `fn + F2`, since F2 alone will actually change my brightness.




**Command-T**

You can activate Command-T with `\t` 


The following mappings are active when the prompt has focus:
*note on mac laptops `fn +  <backspace>`  is equivalent to `<delete>`*

    <BS>        delete the character to the left of the cursor
    <Del>       delete the character at the cursor
    <Left>      move the cursor one character to the left
    <C-h>       move the cursor one character to the left
    <Right>     move the cursor one character to the right
    <C-l>       move the cursor one character to the right
    <C-a>       move the cursor to the start (left)
    <C-e>       move the cursor to the end (right)
    <C-u>       clear the contents of the prompt
    <Tab>       change focus to the file listing

The following mappings are active when the file listing has focus:

    <Tab>       change focus to the prompt

The following mappings are active when either the prompt or the file listing
has focus:

    <CR>        open the selected file
    <C-CR>      open the selected file in a new split window
    <C-s>       open the selected file in a new split window
    <C-v>       open the selected file in a new vertical split window
    <C-t>       open the selected file in a new tab
    <C-j>       select next file in the file listing
    <C-n>       select next file in the file listing
    <Down>      select next file in the file listing
    <C-k>       select previous file in the file listing
    <C-p>       select previous file in the file listing
    <Up>        select previous file in the file listing
    <C-c>       cancel (dismisses file listing)

The following is also available on terminals which support it:

    <Esc>       cancel (dismisses file listing)
    










----
====
----
====






Red Tape
========

Here's some crap I have to put in here to keep people from suing me.


Pimped-Vim License
------------------
Pimped-Vim is released under the `wtfpl`.

See http://sam.zoy.org/wtfpl

Basically: Do whatever you want with my stuff, just don't sue me.  I make no warrantees about its use, blah blah blah, just live free and go create stuff!



Command-T License
-----------------

You can find the Command-T License in the source for that extension.  I believe it's in `.vim/bundle/command-t`
