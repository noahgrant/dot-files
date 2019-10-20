set -o vi
alias ll='ls -la'
alias cc='clear'
alias h='history'
alias es='exec ${SHELL}'
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory
alias bx='bundle exec'

alias checkstyle='~/sift/console/scripts/checkstyle_changed_files.sh'
alias last_sha='ssh noah@016.console.prod.useast1.int.siftscience.com "cat /opt/siftscience/console/current/REVISION"'
alias submodule_sha='git ls-tree master'
alias upload_exp='rsync -avz ~/sift/console/build/ noah@030.console.expr.useast1.int.siftscience.com:/opt/siftscience/console/current/web/'
alias upload_staging='rsync -avz ~/sift/console/build/ noah@784.console.stg1.useast1.int.siftscience.com:/opt/siftscience/console/current/web/'
alias upload_cl='rsync -avz ~/sift/console/build/internal/component-library/ noah@030.console.expr.useast1.int.siftscience.com:/opt/siftscience/component-library/'

#git
alias gcm='git commit -m'
alias gca='git commit --amend'
alias grc='git rebase --continue'
alias gcpc='git cherry-pick --continue'
alias gpshom='git push origin master'
alias gplom='git pull origin master'
alias gsl='git stash list'
alias gsp='git stash pop'

alias sodadeploy='gcloud app deploy app.yaml --project=prod-soda'

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
# PATH=/Users/Noah/sift/code/web/node_modules/.bin:/usr/local/bin:/Users/Noah/.rvm/gems/ruby-2.0.0-p481/bin:/Users/Noah/.rvm/gems/ruby-2.0.0-p481@global/bin:/Users/Noah/.rvm/rubies/ruby-2.0.0-p481/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/Noah/.rvm/bin:/Users/Noah/.rvm/bin
PATH=/Users/Noah/sift/code/web/node_modules/.bin:$PATH
SSLKEYLOGFILE=/Users/Noah/sslkeylogfile.log

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export SIFT_SSH_USER="noah"
