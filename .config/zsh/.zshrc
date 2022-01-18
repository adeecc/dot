# source ~/.config/zsh/.zprofile #.zshenv stuff
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.scripts:$PATH
export TERM="xterm-256color"
# export HISTFILE=$HOME/.config/zsh/.zhistory

export EDITOR='nvim'
export TERMINAL='alacritty'

# Basic zsh settings
PATH=$PATH:$HOME/.scripts # making my scripts run without typing the whole path
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Navigation
alias ..='cd ..' 

# Changing "ls" behaviour and using exa
alias ls='exa --icons --color=auto --group-directories-first' # my preferred listing
alias la='exa --icons --color=auto --group-directories-first -a' # all files and dirs
alias ll='exa --icons --color=auto --group-directories-first -l' # long format
alias lt='exa --icons --color=auto --group-directories-first -T' # tree listing

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Utils
alias zshrc="nvim ~/.zshrc"
alias pac='sudo pacman'
alias vi="nvim"

# Run the starship prompt
eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/adeecc/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/adeecc/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/adeecc/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/adeecc/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
