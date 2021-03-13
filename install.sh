#!/bin/bash

file_bash=~/.bashrc
file_git_alias=".bash_alias_git"
file_prompt=".bash_prompt"

path=$(pwd)
path_git_alias="$path/$file_git_alias"
path_prompt="$path/$file_prompt"

function Install() {
  local description="$1"
  local path_to_include="$2"

  if grep -q "$path_to_include" "$file_bash"; [ $? -eq 0 ]; then
    echo "(   ) $description"
  else
    echo "[ -f $path_to_include ] && . $path_to_include" 1>> "$file_bash"
    echo "( x ) $description"
  fi
}

Install $file_git_alias $path_git_alias
Install $file_prompt $path_prompt
