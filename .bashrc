set -o vi
alias ll='ls -la'
alias cc='clear'
alias h='history'
alias es='exec ${SHELL}'
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory
alias bx='bundle exec'

#git
alias gcm='git commit -m'
alias gca='git commit --amend'
alias grc='git rebase --continue'
alias gcpc='git cherry-pick --continue'
alias gpshom='git push origin master'
alias gplom='git pull origin master'
alias gsl='git stash list'
alias gsp='git stash pop'

function mkcd {
  mkdir $1
  cd $1
}

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
. ~/plugins/z/z.sh
export PS1='\e[01;32m\u\e[34m@\H \e[01;31m\w \e[32;0m$(showBranch showSHA) \n\[\e[\e[0m\]ʃ \[\e[0m\]'

### Added by the Heroku Toolbelt
PATH="/Library/Frameworks/GDAL.framework/Versions/1.10/Programs:$PATH"
PATH="/usr/local/heroku/bin:/usr/local/bin:$PATH"
PATH="$PATH:/usr/local/sbin"

### Adding coreutils via homebrew and not wanting to prepend commands with a 'g'
#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export EDITOR='/usr/bin/vim'
