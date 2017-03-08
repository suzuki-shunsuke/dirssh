#!/usr/bin/env zsh

if [ -n "$DIRSSH_CFGNAME" ]; then
    CFGNAME=$DIRSSH_CFGNAME
else
    CFGNAME=dirsshcfg
fi
if [ -n "$DIRSSH_ALIAS" ]; then
    ALIAS=$DIRSSH_ALIAS
else
    ALIAS=dirssh
fi

_dirssh() {
  local cwd=$PWD
  local CFG_PATH
  while true; do
    if [ -f $cwd/$CFGNAME ]; then
      CFG_PATH=$cwd/$CFGNAME
      break
    elif [ $cwd = "/" ]; then
      CFG_PATH=""
      break
    fi
    cwd=`dirname $cwd`
  done

  if [ -n "$CFG_PATH" ]; then
    alias $ALIAS="ssh -F $CFG_PATH"
  else
    alias $ALIAS="ssh"
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd _dirssh
