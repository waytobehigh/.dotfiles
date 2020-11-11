source "$(brew --prefix)/etc/bash_completion"

# Git branch tracking
# export PS1="\\@\\W \$(__git_ps1 '(%s)') \$ "
# export PS1="\e[2;33m\A\e[m \e[2;31m\u\e[m@\e[2;32m\h\e[m:\e[6;55m\w\e[m \e[2;35m[\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\e[m$ "
# export PS1="\[\e[2;33m\]\A\[\e[m\] \[\e[6;55m\W\e[m\] \[\e[2;35m\[\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\]\e[m\]\$ "
# export PS1="\e[2;33m\\A\e[m \\W \e[2;35m\$(__git_ps1 '[%s]')\e[m \$ "
export PS1="\[\e[2;33m\]\\A\[\e[m\] \\W \[\e[2;35m\][\$(__git_ps1 '%s')]\[\e[m\] \$ "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/starlight/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/starlight/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/starlight/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/starlight/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Turn off zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Brew installation without autoupdate
alias brew_install='HOMEBREW_NO_AUTO_UPDATE=1 brew install'

# Add scripts dir to PATH
export PATH="$PATH:~/scripts"

# Bash autocompletion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Set brew nano to be default 
export PATH="/usr/local/Cellar/nano/4.7/bin/:$PATH"

# Making conda avaliable in tmux
source /Users/starlight/miniconda3/etc/profile.d/conda.sh 
[[ -z $TMUX ]] || conda deactivate; conda activate base


# For compilers to find openblas you may need to set:
#  export LDFLAGS="-L/usr/local/opt/openblas/lib"
#  export CPPFLAGS="-I/usr/local/opt/openblas/include"

# For pkg-config to find openblas you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig"

# Golang
export PATH="$PATH:/usr/local/bin/golangci-lint"
export PATH="$PATH:/usr/local/bin/go"
export PATH="$PATH:~/go/bin/"
export GOPATH=~/go/
export CC=clang

# Neuro completion
# eval "$(_NEURO_COMPLETE=source /Users/starlight/miniconda3/bin/neuro)"

# Java Maven
PATH="/Applications/apache-maven-3.6.3-bin.zip/bin:$PATH"

# Add aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
