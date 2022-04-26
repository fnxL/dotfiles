#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# aliases
alias ls='exa -a --icons'
alias tree='exa --icons --tree'

export MOZ_DISABLE_RDD_SANDBOX=1
export _JAVA_AWT_WM_NONREPARENTING=1

set +H

# init starship
eval "$(starship init bash)"

# BEGIN KITTY SHELL INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR"; then
    export KITTY_SHELL_INTEGRATION="enabled"
    source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi
# END KITTY SHELL INTEGRATION
