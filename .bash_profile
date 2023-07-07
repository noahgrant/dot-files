source ~/.bashrc
# export PATH="$HOME/.rbenv/versions:$HOME/.rbenv/bin:$PATH"
# export RBENV_ROOT=/usr/local/var/rbenv
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
shopt -s histappend

export PROMPT_COMMAND='history -a'
export HISTFILESIZE=5000
export HISTSIZE=5000

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/noahgrant/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/noahgrant/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/noahgrant/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/noahgrant/Downloads/google-cloud-sdk/completion.bash.inc'; fi

eval "$(/usr/local/bin/brew shellenv)"
eval "$(rbenv init - bash)"
