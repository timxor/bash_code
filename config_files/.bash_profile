#-----------------------------------------------------------------------------
# Tim Siwula -- tcsiwula@gmail.edu
# file: ~/.bash_profile
# updated: 03/16/2017
#-----------------------------------------------------------------------------
# file path:  ~/.bash_profile
# edit: atom ~/.bash_profile
# update: source ~/.bash_profile
#-----------------------------------------------------------------------------
# shortcuts: addcommand => atom ~/.bash_profile
# shortcuts: updatecommand => source ~/.bash_profile
#-----------------------------------------------------------------------------



#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 SHELL FUNCTIONS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
alias blah='function _blah(){ echo "First: $1"; echo "Second: $2"; };_blah'
alias addalias='function _addalias(){ "alias $1 = $2 >> ~/.bash_profile"; };_addalias'
alias aa="addalias"

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 ALIAS COMMANDS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#-----------------------------------------------------------------------------
alias js="cd /Users/timsiwula/WebstormProjects/javascript_code && pwd"
alias bashcode="cd /Users/timsiwula/ClionProjects/bash_code && pwd"
alias a4="atom"
alias a5="atom"
alias g5="git status"
alias g7="git branch"
#-----------------------------------------------------------------------------
alias tenx="cd /Users/timsiwula/WebstormProjects/ten-x-chatbot && pwd"
alias notes="cd /Users/timsiwula/Dropbox/notes && pwd && ls -la"
alias a="atom"
alias gs="git status"
alias gb="git branch"
#-----------------------------------------------------------------------------
alias addcommand="atom ~/.bash_profile"
alias addc="addcommand"
alias updatecommand="source ~/.bash_profile"
alias uc="updatecommand"
alias o="open ."
alias c="clear"
alias C="clear"
alias h="history"
alias addssh="atom ~/.ssh/config"
alias p3="/Users/timsiwula/IdeaProjects"
alias dk="cd /Users/timsiwula/Desktop/"
alias itimmy="cd /Users/timsiwula/WebstormProjects/itimmy"
alias hcf="cd /Users/timsiwula/WebstormProjects/buzz-tims_frontend_branch/"
alias deploy="bash deploy_script.sh"
alias chatbot="cd /Users/timsiwula/WebstormProjects/ten-x-chatbot && pwd"
alias react="cd /Users/timsiwula/WebstormProjects/reactjs && pwd"
alias scrn="screen -dr"
alias show="screen -list"
alias chrome="open -a \"Google Chrome\""
alias pull="git pull origin master"
alias push="git push origin master"
alias p1="cd /Users/timsiwula/Dropbox/cs451_fall_2016/project/"
alias compilers="cd /Users/timsiwula/Dropbox/code/svn/tcsiwula/cs414 && pwd"
alias commit="git commit -S -m"
alias geth="geth --rpcapi eth,web3,personal --rpc"
alias ai="cd /Users/timsiwula/WebstormProjects/AI_JavaBridge && pwd"
alias dl="cd ~/Downloads && pwd"
alias run="bash compile_script.sh | /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk http://localhost:8888/"
alias hcdb="pgcli -h happychaindb.ciqykqusf0nv.us-west-1.rds.amazonaws.com -p 5432 -U devapp0 happychaindb"
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                   GREETING MESSAGE
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#-----------------------------------------------------------------------------
echo "+"
echo "++"
echo "+++"
echo "             ~~~~~~~ Hello Tim ~~~~~~~      "
echo "+++"
echo "++"
echo "+"
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 ENVIROMENT VARIABLE CONFIGURATIONS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#-----------------------------------------------------------------------------
# Bash profile sync
#-----------------------------------------------------------------------------
source ~/.profile
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# terminal command prompt icon
#-----------------------------------------------------------------------------
#       export PS1="🤣 $"
export PS1="=>"
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# postgresql database server config
#-----------------------------------------------------------------------------
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# javacc script link
#-----------------------------------------------------------------------------
export PATH=$PATH:/Users/timsiwula/tools/javacc-5.0/bin
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# React Native -- Android Setup
#-----------------------------------------------------------------------------
export ANDROID_HOME=/usr/local/opt/android-sdk
#-----------------------------------------------------------------------------
# Enable Gradle Daemon for Android speed up
#-----------------------------------------------------------------------------
touch ~/.gradle/gradle.properties && echo "org.gradle.daemon=true" >> ~/.gradle/gradle.properties
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Init jenv
#-----------------------------------------------------------------------------
if which jenv > /dev/null; then eval "$(jenv init -)"; fi
export JAVA_HOME=$(/usr/libexec/java_home)
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# MacPorts PATH variable
#-----------------------------------------------------------------------------
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
#-----------------------------------------------------------------------------
