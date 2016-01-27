#!/bin/zsh
__trav_open() {
  if [ "$(uname -s)" = "Darwin" ]; then
    open "$1" 2> /dev/null
  else
    xdg-open "$1" &> /dev/null
  fi
}

__trav_check_yml() {
  trav_file="$(git rev-parse --show-toplevel)/.travis.yml"
  if [ -f $trav_file ]; then
    return 0
  else
    return 1
  fi
}

__trav_get_url() {
  repo_url=$(git config --get remote.origin.url)
  branch=$(git rev-parse --abbrev-ref HEAD)
  url="${repo_url/git/https}"
  url="${url/httpshub/github}"
  url="${url/.git//}"
  url="${url/https@/https://}"
  url="${url/com:/com/}"
  url="${url/https:\/\/github.com\//}"
  url="${url%/*}"
  url="https://travis-ci.org/$url"
}

git-trav() {
  if __trav_check_yml; then
    __trav_get_url
    __open $url
  else
    echo "No .travis.yml file found."
  fi
}

# git config --global alias.trav '!zsh -ic git-trav'