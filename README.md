## Install & Setup tmux

## Debian/Ubuntu:

`git clone https://github.com/metral/tmux.git ~/.tmux`

`cd ~/.tmux`

`./setup.sh`

`ln -s ~/.tmux/tmux.conf ~/.tmux.conf`


## Creating static tmux sessions (Optional)

Edit/Customize 'tmux_session' in your favorite editor

Then run `./tmux_session` to start the session

Note: The session's name will be the name of the session file. In this case,
our session will be called 'tmux_session'

If you detach this session, you can restore it by doing either:

Traditional: `tmux attach -t tmux_session`

or

Shell script: `./tmux_session`
The shell script will search for existing sessions by the same name and do the
attaching for you
