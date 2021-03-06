# Bash history setting

# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

## Terminal
PS1="\u@mat \W\$ "

## TODO:
eval "$(direnv hook bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

source ~/aliases.sh
source ~/git-completion.bash
source ~/network.sh
source ~/wunderline_helper.sh
# For work remove
source ~/work.sh

CUSTOM_BIN=$HOME/v2.config/bin
export PATH=$CUSTOM_BIN:$PATH
export PATH=$HOME/gocode/bin:$PATH

source /usr/local/etc/bash_completion.d/password-store

GIT_HUB_WRAPPER_LIB=$HOME/new-wave/git-hub/lib
GIT_HUB_WRAPPER_MAN=$HOME/new-wave/git-hub/man
export PATH="$GIT_HUB_WRAPPER_LIB:$PATH"
export MANPATH="$GIT_HUB_WRAPPER_MAN:$MANPATH"

# https://blog.jez.io/cli-code-review/
# For Git stat and files
export REVIEW_BASE=master
# Review between 'ups/feature-US1125790-FIX-DB' and the current branch
# export REVIEW_BASE=ups/feature-US1125790-FIX-DB git stat
# Review changes made by the last commit of this branch:
# REVIEW_BASE=HEAD^ git stat
# For review use git review or git reviewone
# REVIEW_BASE=master git review

source /usr/local/opt/autoenv/activate.sh

eval "$(rbenv init -)"
# vim: ai ts=2 sw=2 et sts=2 ft=sh
