#-----------------------------------------------------------------------------
# Tim Siwula -- tcsiwula@gmail.edu
# file: ~/.bash_profile
# updated:  11/29/2016
#
# file path:  ~/.bash_profile
# edit: atom ~/.bash_profile
# update: source ~/.bash_profile
#
# shortcuts: addcommand == atom ~/.bash_profile
# shortcuts: updatecommand == source ~/.bash_profile
#
#-----------------------------------------------------------------------------
source ~/.profile

# postgresql database server config
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# terminal command prompt icon
export PS1="🤣 $"

export JAVA_HOME=$(/usr/libexec/java_home)
#-----------------------------------------------------------------------------
#
#-----------------------------------------------------------------------------
alias scrn="screen -dr"
alias show="screen -list"
alias chrome="open -a \"Google Chrome\""
alias pull="git pull origin master"
alias push="git push origin master"
alias p1="cd /Users/timsiwula/Dropbox/cs451_fall_2016/project/"
alias addcommand="atom ~/.bash_profile"
alias updatecommand="source ~/.bash_profile"
alias commit="git commit -S -m"
alias o="open ."
alias run="bash compile_script.sh | /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk http://localhost:8888/"
alias geth="geth --rpcapi eth,web3,personal --rpc"
alias ai="cd /Users/timsiwula/WebstormProjects/AI_JavaBridge && pwd"
alias dl="cd ~/Downloads && pwd"

alias addssh="atom ~/.ssh/config"
alias hcdb="psql --host=happychaindb.ciqykqusf0nv.us-west-1.rds.amazonaws.com --port=5432 --username=devapp0 --password --dbname=happychaindb"

alias uc="updatecommand"
alias c="clear"
alias h="history"
alias p3="/Users/timsiwula/IdeaProjects"
alias dk="cd /Users/timsiwula/Desktop/"
alias itimmy="cd /Users/timsiwula/WebstormProjects/itimmy"
alias hcf="cd /Users/timsiwula/WebstormProjects/buzz-tims_frontend_branch/"
alias reactjs="cd /Users/timsiwula/WebstormProjects/reactjs"
#-----------------------------------------------------------------------------
echo "+"
echo "++"
echo "+++"
echo "++++"
echo "+++++"
echo " "
echo "Hello Master Tim"
echo " "
echo "+++++"
echo "++++"
echo "+++"
echo "++"
echo "+"
#-----------------------------------------------------------------------------

##
# Your previous /Users/timsiwula/.bash_profile file was backed up as /Users/timsiwula/.bash_profile.macports-saved_2017-01-30_at_14:38:28
##

# MacPorts Installer addition on 2017-01-30_at_14:38:28: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2017-01-30_at_15:06:53: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
