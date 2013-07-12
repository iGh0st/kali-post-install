alias cd..="cd .."
alias ..="cd.."

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias psg="ps aux | grep "

alias search="apt-cache search"
alias ins="apt-get install"
alias rem="apt-get purge"
alias upd="apt-get update"
alias upg="apt-get upgrade"

alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

alias ls="ls -halG --color=auto"
alias l="ls -hl --color=auto"
alias edit-aliases="vi ~/.bash_aliases && source ~/.bash_aliases"

alias sqlm='sqlmap -o --batch --exclude-sysdbs --random-agent'
alias myaddy='dig +short -x `curl ifconfig.me`'

### Extract file, example. "ex package.tar.bz2"
ex() {
 if [[ -f $1 ]]; then
 case $1 in
 *.tar.bz2) tar xjf $1 ;;
 *.tar.gz) tar xzf $1 ;;
 *.bz2) bunzip2 $1 ;;
 *.rar) rar x $1 ;;
 *.gz) gunzip $1 ;;
 *.tar) tar xf $1 ;;
 *.tbz2) tar xjf $1 ;;
 *.tgz) tar xzf $1 ;;
 *.zip) unzip $1 ;;
 *.Z) uncompress $1 ;;
 *.7z) 7z x $1 ;;
 *) echo $1 cannot be extracted ;;
 esac
 else
 echo $1 is not a valid file
 fi
}
