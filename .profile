#sudo /Library/StartupItems/VirtualBox/VirtualBox restart
export PATH="/usr/local/bin:$PATH"

export SCRIBD_USER=luke

alias prof='source ~/.profile'
alias rc='bundle exec rails c'
alias sub='sublime'
alias g='git'
alias o='open .'
alias x='gitx'
alias log='git log --name-only'
alias mylog='git log --name-only --author=luke'
alias ci='git commit'
alias df='git diff'
alias dfs='git diff --staged'
alias st='git status'
alias co='git checkout'
alias coh='git checkout HEAD'
alias cop='git checkout'
alias br='git branch'
alias rb='git rebase'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias fetch='git fetch'
alias push='git push'
alias pusho='git push origin'
alias pull='git pull'
alias stache='git stash'
alias stache_on='git stash save'
alias stache_off='git stash pop'
alias ls1='ls -1'
alias u='cd ../'
alias tag='git tag -a'
alias coffeedata='node build_data.js'
alias foldersize='du -sh */'
alias filesize='du -sh *'
alias qad='./script/qa_auto_deploy.rb -v -q '
alias qa01='ssh deploy@qa-host01.lo'
alias qa02='ssh deploy@qa-host02.lo'
alias gr='git reset'
alias grh='git reset --hard'
alias greword='git commit --amend'
alias ga='git commit --ammend'

function _annotate() {
	echo "$(tput setaf 4)>>$(tput sgr0) $@"
	eval $@
}
 
function gup() {
	branch=$([[ -n "$1" ]] && echo "$1" || git rev-parse --abbrev-ref HEAD)
 
	dirty=$(git diff --shortstat 2> /dev/null | tail -n1)
	_annotate git fetch || return
	[[ -n "$dirty" ]] && (_annotate git stash || return)
	_annotate git rebase "origin/$branch" || return
	[[ -n "$dirty" ]] && (_annotate git stash pop || return)
}

alias toscribd='cd ~/Documents/scribd/git/scribd/scribd'
alias todevbox='cd ~/Documents/scribd/git/scribd/devbox'
alias tosbx='toscribd && u && cd scribox'
alias tosites='cd ~/Sites'

alias zo='ssh serve@zerosandonesinc.com'

alias vhalt='vagrant halt'
alias vup='vagrant up'
alias vssh='ssh -v -l luke devbox.lo'

alias undo='git checkout '
alias undoall='git reset --hard HEAD'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

export NODE_ENV='development'

#source $(brew --prefix nvm)/nvm.sh

alias vhosts='sudo vim /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf'
alias hosts='sudo vim /etc/hosts'

alias love="/Applications/love.app/Contents/MacOS/love"
