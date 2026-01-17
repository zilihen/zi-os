# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Use for toolbox container to exec fish on entering the toolbox
# exec fish replaces the current bash process 
# The conditional check if fish exist and is interactive before entering fish,
# this prevent certain error from happening such as unable to open up the terminal or log in
# because fish does not exist, etc.
if [[ $- == *i* ]] && command -v fish >/dev/null 2>&1 && [ -z "$FISH_VERSION" ]; then
    exec fish
fi
