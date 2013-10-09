set -o vi
alias ll='ls -la'
alias cc='clear'
showBranch(){
	if [$(pwd | grep "projects|www") != ""]; then
		git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/±\1/' 
	fi
}

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"
. ~/z/z.sh
export PS1='\e[01;32m\u\e[34m@\H \e[01;31m\w \e[32;0m$(showBranch showSHA) \n\[\e[\e[0m\]⚡ \[\e[0m\]'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:/usr/local/sbin"

### Adding coreutils via homebrew and not wanting to prepend commands with a 'g'
#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export EDITOR='/usr/bin/vim'
