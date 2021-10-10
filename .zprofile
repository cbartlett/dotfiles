# make homebrew work
eval "$(/opt/homebrew/bin/brew shellenv)"

# paging for things like git log
# * -i - ignore case when searching (but respect case if search term contains uppercase letters)
# * -X - do not clear screen on exit
# * -F - exit if text is less then one screen long
# * -R - some default related to colors
export LESS=-iXFR

# allow direct access to ./bin in safe repos
PATH=".git/safe/../../bin:$PATH"

# more colors
export TERM=xterm-256color

# shortcuts
alias be='bundle exec'

# git shortcuts
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gcl='git clean -f -d'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias gl='git pull'
alias glg='git log --graph --oneline --decorate --color --all'
alias glod='git log --oneline --decorate'
alias glp='git log -p'
alias gnap='git add -N --ignore-removal . && gap && gref'
alias gp='git push'
alias gplease='git push --force-with-lease'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grim='git rebase -i master'
alias gst='git status'
alias reset-authors='git commit --amend --reset-author -C HEAD'

# fix bigsur ruby
# https://github.com/rbenv/ruby-build/issues/1747
export CFLAGS="-Wno-error=implicit-function-declaration"

# make rbenv work
eval "$(rbenv init -)"

# copies a good random PW to the clipboard
alias pw="pwgen -n -s 28 1 | pbcopy"


function hcd() {
  cd ~/code/$1
}

# adds config command for versioning dotfiles https://www.atlassian.com/git/tutorials/dotfiles
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'"
