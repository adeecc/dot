# source ~/.config/zsh/.zprofile #.zshenv stuff
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.scripts:$PATH
export TERM="xterm-256color"
export HISTFILE=~/.config/zsh/.zsh_history

export EDITOR='nvim'
export TERMINAL='alacritty'

# Basic zsh settings
PATH=$PATH:$HOME/.scripts # making my scripts run without typing the whole path
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Navigation
alias ..='cd ..' 

# Changing "ls" behaviour and using exa
alias ls='exa --color=auto --group-directories-first' # my preferred listing
alias la='exa -a --color=auto --group-directories-first'  # all files and dirs
alias ll='exa -l --color=auto --group-directories-first'  # long format
alias lt='tree -C' # tree listing

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Utils
alias zshrc="nvim ~/.zshrc"
alias pac='sudo pacman'
alias vi="nvim"
alias fetch='clear && neofetch && fortune ~/.scripts/quotes/quotes'
alias todo="bat ~/todo.md"
alias todoe="vi ~/todo.md"

# Git and GitHub Stuff
alias gs='git status'
alias ga='git add -a'
alias gp='git push'
alias gfum='git fetch upstream/master'
alias grbu='git rebase upstream/master' 

# DotFile Management
alias dot="git --git-dir=$HOME/.dot/ --work-tree=$HOME"

# Run the starship prompt
eval "$(starship init zsh)"

source /usr/share/nvm/init-nvm.sh

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

