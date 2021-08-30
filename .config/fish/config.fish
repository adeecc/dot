### Path Configuration
set -e fish_user_paths
set -U fish_user_paths $HOME/bin /usr/local/bin $HOME/.local/bin $HOME/.scripts $fish_user_paths

set fish_greeting
set TERM "xterm-256color"
set EDITOR "nvim"
set TERMINAL "alacitty"

### Autocomplete and Highlight Colors ###
set fish_color_normal brcyan 
set fish_color_autosuggestion '#7d7d7d' 
set fish_color_command brcyan 
set fish_color_error '#ff6c6b' 
set fish_color_param brcyan


### Aliases
# bindkey "^[[1;5C" forward-word
# bindkey "^[[1;5D" backward-word

# Navigation
alias ..='cd ..' 

# Changing "ls" behaviour and using exa
alias ls='exa --color=auto --group-directories-first' # my preferred listing
alias la='exa  -a --color=auto --group-directories-first'  # all files and dirs
alias ll='exa -l --color=auto --group-directories-firs t'  # long format
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

### SETTING THE STARSHIP PROMPT ###
starship init fish | source
