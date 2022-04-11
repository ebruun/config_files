# .zshrc
# 3rd File
# Login/Interactive/Terminal

#HOW TO CHANGE SHELLS: $ exec zsh

# Overwritten by tools that configure zsh, so careful

sleep 1 #gets rid of Hyper bug with % at start of new session

# HISTORY SAVING
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt NO_EXTENDED_HISTORY
SAVEHIST=5000 # Length of history file
HISTSIZE=2000 # Length of session memory
setopt INC_APPEND_HISTORY # Add lines as they are typed

# TERMINAL SETUP
setopt NO_CASE_GLOB # Not case sensitive
setopt AUTO_CD # Don't need to type cd
setopt CORRECT # Corrections to typos [no/yes/abort/edit]
setopt CORRECT_ALL

# VARIABLES
export PATH=/usr/local/sbin:${PATH}
# export PATH="~/opt/anaconda3/bin:$PATH"  # commented out by conda initialize
export PATH=$PATH:$HOME/bin

# Add Homebrew's executable directory to the front of the PATH
export PATH=/opt/homebrew/bin:$PATH

# Add Sublime Text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export EDITOR='subl -w' # Sublime text as editor

# Add texlive
export PATH="/usr/local/texlive/2021/bin/universal-darwin:$PATH"

export CLICOLOR=1 # Terminal colours
export LSCOLORS=GxFxCxDxBxegedabagaced

# See for explanation:
# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
#export PROMPT='%(?.%F{green}√.%F{red}? %?)%f %B%K{130}%F{120}%n:%k%f%b %B%F{green}%2~%f%b %(!.#.>) '
export PROMPT='%(?.%F{green}√.%F{red}? %?)%f %S%K{black}%F{green}%n:%s%k%f%b %B%F{green}%-2....%1~%f%b %(!.#.>) '  

# ALIASES
alias ssh_adroit="ssh -R 52699:localhost:52698 ebruun@adroit.princeton.edu"

alias c='clear'
alias courses="cd /Users/edvardbruun/Dropbox/05_PhD/_Courses"

alias ls='ls -lra'

alias zshrc='subl $ZDOTDIR/.zshrc'
alias loadzsh='source $ZDOTDIR/.zshrc'

alias test='echo $ZDOTDIR yo'

# LOAD AUTOCOMPLETION
autoload -Uz compinit && compinit #might have to delete .zcompdump to reset

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/edvard/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/edvard/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/edvard/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/edvard/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

