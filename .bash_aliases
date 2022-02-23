#! /bin/bash

# Git Aliases
alias g='git'
#alias gs='git status -sb'
#alias gst='git status'

alias grso='git remote show origin'

# alias gd='git diff'
# alias gdc='git diff --cached'

# alias gl='git pull'
# alias glf='git pull --ff-only'
# alias gup='git pull --rebase'

# alias gp='git push'
# alias gpo='git push origin'
# alias gpot='git push origin --tags'

# alias gchmod='git update-index --chmod=+x'

# alias gt='git tag -a'
alias gtm='f(){ git tag -a $1$2 -m $1$2; echo "Tag: $1$2"; unset -f f; }; f "release/$(date +%Y-%m-%d)"'
# alias gtl='f(){ git tag --sort=-version:refname | head -n $1; unset -f f; }; f'
# alias gtdl='git describe --tags --abbrev=0'
# alias gtr='f(){ git tag -d $1; git push --delete origin $1 --no-verify; unset -f f; }; f'
# alias gtlc='f(){ git show-ref --tags -d | grep $1 | grep {} | tail -10; unset -f f;}; f'

# alias ga='git add'
# alias gap='git add --patch'

# alias grh='git reset HEAD'
# alias grhh='git reset HEAD --hard'
# alias grp='git reset --patch'
# alias gclean='git reset --hard && git clean -dfx'

# alias grvh='git revert HEAD'

# alias gc='git commit -v'
# alias gc!='git commit -v --amend'
# alias gcm='git commit -m'

# alias gco='git checkout'
# alias gcom='git checkout master'
# alias gcob='git checkout -b'
# alias gcorb='f(){ git checkout --track origin/$1; unset -f f; }; f'
# alias gcot='f(){ git checkout tags/$1 -b $1; unset -f f; }; f'>>>>>>> fa73d3f (Add setup git alias)

alias gr='git remote'
alias grv='git remote -v'
alias grmv='git remote rename'
alias grset='git remote set-url'
alias grrm='git remote remove'
alias grup='git remote update'

alias gb='git branch'
alias gba='git branch -a'

alias gsts='git stash show --text'
alias gstl='git stash list'
alias gsta='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'

alias glg='git log --stat --max-count=10'
alias glgs='git log --format="* %s"'
alias glgg='git log --graph --max-count=10'
alias glgga='git log --graph --decorate --all'
alias glgfp='git log --first-parent'
alias glo='git log --pretty=format:"%C(auto)%h%d %Cgreen(%cs) %C(auto)%s"'
alias gloa='git log --pretty=format:"%C(auto)%h%d %C(green)(%cs) %C(cyan)%an %C(auto)%s"'
alias glog='git log --graph --pretty=format:"%C(auto)%h%d %Cgreen(%cs) %C(auto)%s"'
alias gcount='git shortlog -sn --no-merges'
alias glglt='git log $(git describe --tags --abbrev=0)..HEAD --format="* %s"'
alias glgbt='f(){ git log $1..$2 --format="* %s"; unset -f f; }; f'

alias gcl='git config --list'
# alias gcp='git cherry-pick'

# alias grbi='git rebase -i'
# alias grbc='git rebase --continue'
# alias grba='git rebase --abort'

# alias gm='git merge'
# alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

alias gls='git ls-files'

alias gmt='git mergetool --no-prompt'

alias gg='git gui citool'
alias gga='git gui citool --amend'


# Will cd into the top of the current repository
# or submodule.
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'

# these alias commit and uncomit wip branches
alias gwip='git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--"'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'

# these alias ignore changes to file
alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'
# list temporarily ignored files
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
