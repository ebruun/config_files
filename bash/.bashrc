# FOR OSX
# .bashrc

#HOW TO CHANGE SHELLS: $ exec bash
 
# Change command line prompt
#\u - user name
#\h - short hostname
#\W - current working dir
#\? - exit status of the command

# export PS1="\u: \W$ "
#export PS1="\e[1;31m\u: \W$\e[m "
export PS1="\e[102;30m\u:\e[m \e[1;32m\W\e[m$ "

# Terminal Colourscd 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS


# Path
export PATH=$PATH:$HOME/bin
export PATH

# For Sublime Text as editor
export EDITOR='subl -w'

#ALIASES
alias ssh_adroit="ssh -R 52699:localhost:52698 ebruun@adroit.princeton.edu"

alias c='clear'
alias courses="cd /Users/edvardbruun/Dropbox/05_PhD/_Courses"

alias ls='ls -lra'

#Program Aliases
alias bashrc='subl ~/.bashrc'
alias loadbash='source ~/.bash_profile'

#REAL SENSE
# Shell access to the built executables (e.g., `realsense-viewer`)
export PATH="/opt/librealsense/bin${PATH:+:${PATH}}"

# Linkage paths for building libraries that depend on `librealsense2`
export LD_LIBRARY_PATH="/opt/librealsense/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
export DYLD_LIBRARY_PATH="/opt/librealsense/lib${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}"

# Allow e.g. `pkg-config --cflags --libs realsense2`
export PKG_CONFIG_PATH="/opt/librealsense/lib/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}"

# Allow for `find_package(realsense2)` in CMake projects
export CMAKE_MODULE_PATH="/opt/librealsense/lib/cmake${CMAKE_MODULE_PATH:+:${CMAKE_MODULE_PATH}}"

