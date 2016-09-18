#-----------------------------------------------------------------------------
# Tim Siwula's .bash_profile preferences.
# tcsiwula@usfca.edu
# updated:  09/18/2016
# file path:  ~/.bash_profile
# edit: atom .bash_profile
# update: source .bash_profile
#-----------------------------------------------------------------------------
source ~/.profile
export PATH=/usr/local/bin:$PATH
alias c="clear"
alias h="history"
#-----------------------------------------------------------------------------
echo "+      o     +              o"
echo "Hello Tim! :-)"
echo "+      o     +              o"
echo "   +             o     +       +"
echo "o          +"
echo "-_-_-_-_-_-_-_,------,      o"
echo "_-_-_-_-_-_-_-|     /\_/\"
echo "-_-_-_-_-_-_--|__()  +"
echo "_-_-_-_-_-_-_-''''  ''''"
echo "+      o         o   +       o"
echo "   +         +"
echo "o        o         o      o     +"
echo "Hello Tim! :-)"
echo "o        o         o      o     +"
#-----------------------------------------------------------------------------
#### Determine System #####
# 1 get system type and assign to varibale
if [[ $(uname -a) == *"Darwin"* ]]; then
    distro_name="osx"
elif [[ $(cat /etc/*-release) == *"Ubuntu"* ]]; then
    distro_name="ubuntu"
elif [[ $system_name == *"Debian"* ]]; then 
    distro_name="debian" 
elif [[ $system_name == *"SUSE"* ]]; then 
    distro_name="suse" 
elif [[ $system_name == *"Red"* ]]; then 
    distro_name="redhat" 
elif [[ $system_name == *"Fedora"* ]]; then 
    distro_name="fedora" 
elif [[ $system_name == *"Cent"* ]]; then 
    distro_name="cent"
else
    echo "No system_name identified to target an installation."
fi
echo "You are currently on a <<<$distro_name>>> system"
echo
#-----------------------------------------------------------------------------

