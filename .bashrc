set -o vi
alias ll='ls -la'
alias cc='clear'
alias h='history'
alias es='exec ${SHELL}'
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory
alias bx='bundle exec'

alias submodule_sha='git ls-tree master'
alias jest_debug='node --inspect-brk node_modules/.bin/jest --runInBand'

#git
alias gcm='git commit -m'
alias gca='git commit --amend'
alias grc='git rebase --continue'
alias gcpc='git cherry-pick --continue'
alias gpshom='git push origin master'
alias gplom='git pull origin master'
alias gsl='git stash list'
alias gsp='git stash pop'

alias old_consoledeploy='cd ~/calixa/console && ./calixa_helm -a deploy -e production -k production-usc1'
alias consoledeploy='cd ~/calistoga/console && gcloud app deploy production-console.yaml --configuration=calistoga --project production-390521'
alias marketingdeploy='cd ~/calixa/marketing-site && ./calixa_helm -a deploy -e production -k production-usc1'
alias redis='cd ~/calixa/platform && docker-compose -f local-services/docker-compose.dev.yml up redis'
alias consoletunnel='ngrok http 11515 -subdomain=noahthegrant'

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

export PS1='\e[01;32m\u\e[34m@\H \e[01;31m\w \e[32;0m$(showBranch showSHA) \n\[\e[\e[0m\]ʃ \[\e[0m\]'

PATH="$PATH:/usr/local/sbin"

### Adding coreutils via homebrew and not wanting to prepend commands with a 'g'
#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export EDITOR='/usr/bin/vim'
# PATH=/Users/Noah/.rvm/gems/ruby-2.0.0-p481/bin:/Users/Noah/.rvm/gems/ruby-2.0.0-p481@global/bin:/Users/Noah/.rvm/rubies/ruby-2.0.0-p481/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/Noah/.rvm/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export NPM_PACKAGES_READ_TOKEN=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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
