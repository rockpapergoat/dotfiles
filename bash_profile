source ~/.bashrc
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/local/git/bin:$PATH

#added 1/30/07 based on this hint: http://www.macgeekery.com/tips/cli/adding_items_to_the_dock
dockadd () {
        defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$1</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"; killall Dock
}
#export PATH=/usr/local/git/bin:$PATH

export MANPATH=/usr/local/git/man:$MANPATH

# rvm-install added line:
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# set forward history search to control - s
bind '"C-s": history-search-forward'


source $HOME/.profile
