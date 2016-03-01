# This file is automatically picked up by Ubuntu, but it might need to be added
# to the `.bashrc` by appending it with `. ~/.bash_aliases`

export GIT_USER=bvantoorn
export PATH="~/bin:$PATH" # To allow local bins to be found

# Change the prompt
. ~/.prompt.sh

# Shortcuts
alias g="git"

# Directory shortcuts
alias cdp="cd ~/projects"
alias cdpa="cd ~/projects/adrime-legacy-display"
alias cdpaf="cd ~/projects/admire-2-front-end"
alias cdpab="cd ~/projects/admire-2-back-end"
alias cdpd="cd ~/projects/display-scripts"
alias cdpsi="cd ~/projects/screenad-interface"
alias cdpst="cd ~/projects/screenad-template"
alias cdpwai="cd ~/projects/weborama-ad-investigator"
alias cdpia="cd ~/projects/integration/adrime-legacy-display"
alias cdpid="cd ~/projects/integration/display-scripts"

# GRS $PATH + aliases
export PATH=$HOME/.grs/grs/bin:$PATH
alias gr="git redmine"
alias grr="git redmine review"
alias grrs="git redmine review start"
alias grrf="git redmine review finish -f -a -n -t"
alias grt="git redmine task"
alias grts="git redmine task start"
alias grtf="git redmine task finish -t"
