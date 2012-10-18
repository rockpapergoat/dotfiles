PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin
# added 5/5/10
export HISTIGNORE="[ ]*"
# added 1/1/11
export EDITOR=/usr/bin/vim
#set -xv
#
# paths
#alias ruby=/usr/bin/ruby
#
#
# processes
alias topp="top -u -s5 -n 10"
alias ps="ps auwwwx"
alias log="tail -30f /var/log/system.log"
alias tail30="tail -30f"
#
# added 100114
# git commands
alias ga="git add"

#
# locations
alias code="cd ~/code"
alias manuals="cd /Users/n8/Documents/manuals"
#
#
# networking
alias getip0="ipconfig getifaddr en0"
alias getip1="ipconfig getifaddr en1"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
alias air="scselect air | networksetup -setairportpower en0 on"
# 9/18/09
alias airon="networksetup -setairportpower AirPort on"
alias airoff="networksetup -setairportpower AirPort off"
#
#
#
# ssh
alias sshh="ssh n8@adullmoment.com"
#
# utilities
alias lh="ls -alh"
alias now="date +%D,  %X"
alias makepass="/usr/bin/openssl rand -base64 $1" #pass a number
alias gswap="sysctl vm.swapusage"
alias flushdns="dscacheutil -flushcache"
# added 090129
alias psg="ps -auwwwx | grep -i"
alias portcheck="nc -z"
# added 4/30/10
alias topc='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
# added 101130
alias runpuppet='vmrun start ~/Documents/dmg/iso/CentOS55.vmwarevm/CentOS55.vmx nogui; echo "puppet vm started..."'
#
#
#
# added 8/10/11
alias task='/usr/local/bin/t.py --task-dir ~/tasks --list tasks'
# rvm-install added line:
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# added 10/16/12                                                                                │                                                                                                
alias tn='tmux new -s "$(basename `pwd`)" || tmux at -t "$(basename ` pwd`)"'

source $HOME/.profile
