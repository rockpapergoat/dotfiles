#
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export PATH=/usr/local/git/bin:$PATH

export MANPATH=/usr/local/git/man:$MANPATH

##
# DELUXE-USR-LOCAL-BIN-INSERT
# (do not remove this comment)
##
echo $PATH | grep -q -s "/usr/local/bin"
if [ $? -eq 1 ] ; then
    PATH=$PATH:/usr/local/bin
    export PATH
fi
