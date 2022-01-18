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

### SETTING THE STARSHIP PROMPT ###
starship init fish | source