source /usr/share/cachyos-fish-config/cachyos-config.fish

#starship
starship init fish | source

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end


# aliases
alias snano='sudo nano'
alias cp='cp -i'
#alias rm='trash -v'
alias mkdir='mkdir -p'
alias cls='clear'
alias ..='cd ..'
alias rmd='/bin/rm --recursive --force --verbose'
alias ls='eza -al --color=always --group-directories-first --icons'
alias lsa='ls -la --color=always'

#Bindings
    #bind Ctrl+fsudo pacman '-Syu'='sudo pacman -Syu'

#Bindings
    #bind Ctrl+f to insert 'cdi'
    function __cdi_func
    commandline -r 'cdi'
    commandline -f execute
	end

	bind \cf '__cdi_func'


# set default editor
export EDITOR=nano
export VISUAL=nano

zoxide init --cmd cd fish | source
