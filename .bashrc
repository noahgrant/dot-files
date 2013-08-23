set -o vi
alias ll='ls -la'
alias cc='clear'
showBranch(){
	if [$(pwd | grep "projects|www") != ""]; then
		git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/±\1/' 
	fi
}

if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion
fi

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"
. ~/z/z.sh
export PS1='\e[01;32m\u\e[34m@\H \e[01;31m\w \e[32;0m$(showBranch showSHA) \n\[\e[\e[0m\]⚡ \[\e[0m\]'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export EDITOR='/usr/bin/vim'
