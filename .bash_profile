source ~/.bashrc
# export PATH="$HOME/.rbenv/versions:$HOME/.rbenv/bin:$PATH"
# export RBENV_ROOT=/usr/local/var/rbenv
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
shopt -s histappend

export PROMPT_COMMAND='history -a'
export HISTFILESIZE=5000
export HISTSIZE=5000

eval "$(/usr/local/bin/brew shellenv)"
eval "$(rbenv init - bash)"
export PATH="/usr/local/opt/libpq/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/noahgrant/google-cloud-sdk/path.bash.inc' ]; then . '/Users/noahgrant/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/noahgrant/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/noahgrant/google-cloud-sdk/completion.bash.inc'; fi

export GOOGLE_APPLICATION_CREDENTIALS="/Users/noahgrant/.config/gcloud/production-390521-d2ed8700fbf1.json"
