if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export BASH_SILENCE_DEPRECATION_WARNING=1

complete -C '/opt/homebrew/bin/aws_completer' aws

# Function to get the current Git branch
git_branch() {
  git branch 2>/dev/null | grep '*' | sed 's/* //'
}

export PS1="→  \[\033[38;5;208m\]\u\[\033[38;5;15m\]:\[\033[38;5;39m\]\w\[\033[38;5;15m\]\[\033[38;5;45m\] (\$(git_branch))\[\033[38;5;15m\] $ "

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
