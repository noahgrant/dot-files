source ~/.bashrc
# export PATH="$HOME/.rbenv/versions:$HOME/.rbenv/bin:$PATH"
# export RBENV_ROOT=/usr/local/var/rbenv
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
shopt -s histappend

export PROMPT_COMMAND='history -a'
export HISTFILESIZE=5000
export HISTSIZE=5000
