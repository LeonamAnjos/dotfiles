git config --global alias.st 'status'
git config --global alias.s  'status -sb'

git config --global alias.co 'checkout'
git config --global alias.ci 'commit -m'

git config --global alias.d  'diff'
git config --global alias.dc 'diff --cached'

git config --global alias.a  'add'
git config --global alias.ap 'add --patch'

git config --global alias.l  'pull'
git config --global alias.lf 'pull --ff-only'
git config --global alias.up 'pull --rebase'

git config --global alias.p   'push'
git config --global alias.pot 'push origin --tags'
git config --global alias.pob '!git push origin $(git branch --show-current)'

git config --global alias.rh='git reset HEAD'
git config --global alias.rhh='git reset HEAD --hard'
git config --global alias.rp='git reset --patch'
git config --global alias.clean='git reset --hard && git clean -df'


git config --global alias.chmod 'update-index --chmod=+x'

git config --global alias.t   '!git tag -a $1 -m $1 #'
git config --global alias.tl  '!git tag --sort=-version:refname | head -n $1 #'
git config --global alias.tlc '!git show-ref --tags -d | grep {} | tail -10 | sort -r'
git config --global alias.tdr '!git tag -d $1; git push --delete origin $1 --no-verify #'
