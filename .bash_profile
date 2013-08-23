
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.bashrc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
shopt -s histappend

export PROMPT_COMMAND='history -a'
export HISTFILESIZE=5000
export HISTSIZE=5000
