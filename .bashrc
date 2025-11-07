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

# exec Fastfetch
if [ -f /usr/bin/fastfetch ]; then
    fastfetch
fi

# aliases
alias snano='sudo nano'
alias cp='cp -i'
alias rm='trash -v'
alias mkdir='mkdir -p'
alias cls='clear'
alias ..='cd ..'
alias rmd='/bin/rm --recursive --force --verbose '
alias ls='ls -aFh --color=always'

#Bindings
if [[ $- == *i* ]]; then
    #bind Ctrl+f to insert 'cdi' followed by a new line
    bind '"\C-f":"cdi\n"'
fi

# set default editor
export EDITOR=nano
export VISUAL=nano

# activate zoxide and starship
eval "$(zoxide init --cmd cd bash)"
eval "$(starship init bash)"
