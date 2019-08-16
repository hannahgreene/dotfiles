
set term=builtin_ansi

alias aws-whoami="aws sts get-caller-identity"
alias ls='ls -GFh'
alias ll='ls -lG'

export CLICOLORS=1
export LSCOLORS=Fxgxcxdxcxegedabagacad

echo "Welcome to Hannah's Terminal"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]\[\033[m\]\$ "



# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
