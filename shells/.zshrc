#-----------------------------------------------------------------------------
# Author:         Tim Siwula <tcsiwula@gmail.com>, <@tcsiwula>
# file:           ~/.zshrc
# updated:        08/19/2017
#-----------------------------------------------------------------------------
# file path:      ~/.zshrc
# edit:           atom ~/.zshrc
# update:         source ~/.zshrc
#-----------------------------------------------------------------------------
# shortcuts:      addc == addcommand == atom ~/.zshrc
# shortcuts:      uc == updatecommand == source ~/.zshrc
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 PATH INDEPENDENT -- ALIAS COMMANDS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
alias a="atom"
alias addcommand="atom ~/.zshrc"
alias addc="addcommand"
alias updatecommand="source ~/.zshrc"
alias uc="updatecommand"
alias o="open ."
alias c="clear"
alias C="clear"
alias h="history"
alias addssh="atom ~/.ssh/config"
alias deploy="bash deploy_script.sh" # at here /usr/local/bin/deploy_script.sh
#alias gs="git status"
#alias gb="git branch"
#alias scrn="screen -dr"
#alias show="screen -list"
#alias chrome="open -a \"Google Chrome\""
#alias gpull="git pull origin master"
#alias gpush="git push origin master"
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
#                 PATH SENSITIVE -- ALIAS COMMANDS
#-----------------------------------------------------------------------------
alias editdeploy="a /usr/local/bin/deploy_script.sh" # at here /usr/local/bin/deploy_script.sh
alias benchp="cd $HOME/Dropbox/Projects/parity && pwd && ls -la"
alias benchc="cd /Users/tim.siwula/Dropbox/Projects/cpp-ethereum/build && pwd && ls -la"
alias benchg="cd /Users/tim.siwula/Dropbox/Projects/go-ethereum && pwd && ls -la"
alias google="gcloud compute ssh high-memory-instance1-zone-us-west1a-260-per-month"
alias projects="cd /Users/tim.siwula/Dropbox/Projects/ && pwd && ls -la"
alias bashcode="cd /Users/tim.siwula/ClionProjects/bash_code && pwd"
alias dk="cd /Users/tim.siwula/Desktop/"
alias itimmy="cd /Users/tim.siwula/WebstormProjects/itimmy"
alias notes="cd /Users/tim.siwula/Dropbox/notes && pwd && ls -la"

alias testing="cd /Users/tim.siwula/Desktop/metropolis_testing && pwd && ls -la"
##alias react="cd /Users/timsiwula/WebstormProjects/reactjs/sb_tutorial && pwd"
#alias p1="cd /Users/timsiwula/Dropbox/cs451_fall_2016/project/"
#alias compilers="cd /Users/timsiwula/Dropbox/code/svn/tcsiwula/cs414 && pwd"
#alias commit="git commit -S -m"
#alias geth="geth --rpcapi eth,web3,personal --rpc"
#alias ai="cd /Users/timsiwula/WebstormProjects/AI_JavaBridge && pwd"
#alias dl="cd ~/Downloads && pwd"
#alias run="bash compile_script.sh | /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk http://localhost:8888/"
#alias hcdb="pgcli -h happychaindb.ciqykqusf0nv.us-west-1.rds.amazonaws.com -p 5432 -U devapp0 happychaindb"
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
#                 STATS ?
#-----------------------------------------------------------------------------
alias sp="stat -f \"%A %N\" *"     # show permissions
#-----------------------------------------------------------------------------

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tim.siwula/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/tim.siwula/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tim.siwula/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/tim.siwula/google-cloud-sdk/completion.zsh.inc'; fi

# OPAM configuration
. /Users/tim.siwula/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
export PATH="/usr/local/opt/llvm/bin:$PATH"

# GO configurations a la Matthew!
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# use homebrew installed git as default git version
export PATH="/usr/local/bin:${PATH}"

#-----------------------------------------------------------------------------
# terminal prompt icon
#-----------------------------------------------------------------------------
export PS1="=> "
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                   GREETING MESSAGE
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# #-----------------------------------------------------------------------------
echo "+"
# echo "++"
echo "~~~~~~~ Hi Tim!  = ) ~~~~~~~ "
# echo "++"
echo "+"
# #-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 ENVIROMENT VARIABLE CONFIGURATIONS
# default mac path:             /usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#-----------------------------------------------------------------------------
# postgresql database server config
#-----------------------------------------------------------------------------
#export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# javacc script link
#-----------------------------------------------------------------------------
#export PATH=$PATH:/Users/timsiwula/tools/javacc-5.0/bin
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# React Native -- Android Setup
#-----------------------------------------------------------------------------
#export ANDROID_HOME=/usr/local/opt/android-sdk
#-----------------------------------------------------------------------------
# Enable Gradle Daemon for Android speed up
#-----------------------------------------------------------------------------
#touch ~/.gradle/gradle.properties && echo "org.gradle.daemon=true" >> ~/.gradle/gradle.properties
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Init jenv
#-----------------------------------------------------------------------------
#if which jenv > /dev/null; then eval "$(jenv init -)"; fi
#export JAVA_HOME=$(/usr/libexec/java_home)
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Bash profile sync
#-----------------------------------------------------------------------------
#source ~/.profile
#-----------------------------------------------------------------------------


# sync zsh with bash
#[[ -f ~/.bashrc ]] && . ~/.bashrc


#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 SHELL FUNCTIONS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#alias blah='function _blah(){ echo "First: $1"; echo "Second: $2"; };_blah'
#alias addalias='function _addalias(){ "alias $1 = $2 >> ~/.bash_profile"; };_addalias'
#alias showremotebranches="git ls-remote --heads origin"
#alias cpu_server="gcloud compute ssh cpu-server"
#alias copy_bash_profile_to_profile="sudo cat ~/.bash_profile >> ~/.profile && source ~/.profile"
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
