
source ~/.bashrc
PATH=/usr/local/bin:$PATH

# rvm config here, rbenv config below
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#export PATH="$HOME/.rbenv/versions:$HOME/.rbenv/bin:$PATH"
#export RBENV_ROOT=/usr/local/var/rbenv
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

shopt -s histappend

export PROMPT_COMMAND='history -a'
export HISTFILESIZE=5000
export HISTSIZE=5000

#eval `keychain --eval --agents ssh --inherit any siftscience-east.pem`

source ~/sift/code/tools/envsetup.sh
