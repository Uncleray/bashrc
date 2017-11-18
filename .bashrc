# Copyright (c) Uncleray

#git branch function
git_branch()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#bash completion
if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

#some alias
alias ll='ls -la --color'
alias please='sudo $(history -p !!)'

#colorize PS1
export PS1='\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h [\[$(tput sgr0)\]\[\033[38;5;178m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[\033[38;5;9m\]$(git_branch) \[\033[38;5;15m\]\$\[$(tput sgr0)\] '