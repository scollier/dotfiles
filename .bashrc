# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias vi=vim
export HISTSIZE=15000
export HISTFILESIZE=15000
# export 
# . ~/.bashrc_vagrant.sh

# Set up git branch prompt
export PS1='[\u@\h \W$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")]\$ '
source /usr/share/git-core/contrib/completion/git-prompt.sh

rvm use system &> /dev/null

# The next line updates PATH for the Google Cloud SDK.
# source '/home/scollier/y/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
# source '/home/scollier/y/google-cloud-sdk/completion.bash.inc'
if [ -f ~/.bashrc.vagrant ]; then
	. ~/.bashrc.vagrant
fi

# Enable AWS auto-completion; scollier 5/10/2016
