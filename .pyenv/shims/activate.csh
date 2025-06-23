[ -n "$PYENV_DEBUG" ] && set -x
export PYENV_ROOT="/Users/hgreene/.pyenv"
program="$("/opt/homebrew/opt/pyenv/bin/pyenv" which "${BASH_SOURCE##*/}")"
if [ -e "${program}" ]; then
  . "${program}" "$@"
fi
