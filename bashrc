PATH=/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/bin
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
alias tsp="cd ~/tsp"
alias code="cd ~/code"
alias manuals="cd /Users/n8/Documents/manuals"
alias puppet-git="cd ~/tsp/_presentations/puppet/puppet_git"
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
alias makepass="/usr/bin/openssl rand -base64 15"
alias gswap="sysctl vm.swapusage"
alias flushdns="dscacheutil -flushcache"
alias sshgrep='ps -ax | grep ssh'
# added 090129
alias psg="ps -auwwwx | grep"
alias portcheck="nc -z"
## added 8/20/07
alias keyn8="security unlock ~/Library/Keychains/n8.keychain"
# added 4/30/10
alias topc='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'
# added 100916
alias corey='ssh -vv -N -L 5999:localhost:5900 cmnsrv'
# added 101130
alias runpuppet='vmrun start ~/Documents/dmg/iso/CentOS55.vmwarevm/CentOS55.vmx nogui; echo "puppet vm started..."'
#
#
#
# added 8/10/11
alias t='/usr/local/bin/t.py --task-dir ~/tasks --list tasks'
# rvm-install added line:
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi



source $HOME/.profile
