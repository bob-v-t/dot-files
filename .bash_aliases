# This file is automatically picked up by Ubuntu, but it might need to be added
# to the `.bashrc` by appending it with `. ~/.bash_aliases`

# export PATH="~/bin:$PATH" # To allow local bins to be found (ubuntu already does this)
alias g="git"

# Change the prompt
if [ -f ~/.bash_prompt.sh ]; then
    . ~/.bash_prompt.sh
fi

# Add shortcuts for GRS (e.g.: `grrf 0.4`)
if [ -f ~/.bash_grs.sh ]; then
    . ~/.bash_grs.sh
fi

# Add project dir shortcuts for easy folder switching
if [ -f ~/.bash_dir_shortcuts.sh ]; then
    . ~/.bash_dir_shortcuts.sh
fi
