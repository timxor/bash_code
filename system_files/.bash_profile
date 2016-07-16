#-----------------------------------------------------------------------------
# Tim Siwula's .bash_profile preferences.
# tcsiwula@usfca.edu
#-----------------------------------------------------------------------------

#### Determine System #####
# platform='unknown'
# unamestr=`uname`
# user = whoami
# if [[ "$unamestr" == 'Linux' ]]; then
#    platform='Linux'
# elif [[ "$unamestr" == 'Darwin' ]]; then
#    platform='Darwin'
# fi

echo ""
echo "Hello user"
echo "+      o     +              o"
echo "   +             o     +       +"
echo "o          +"
echo "-_-_-_-_-_-_-_,------,      o"
#echo "_-_-_-_-_-_-_-|     /\_/\"
echo "-_-_-_-_-_-_--|__()  +"
#echo "_-_-_-_-_-_-_-''''  ''''"
echo "+      o         o   +       o"
echo "   +         +"
echo "o        o         o      o     +"
echo ""








# Define a word using collinsdictionary.com
define() {
  curl -s "http://www.collinsdictionary.com/dictionary/english/$*" | sed -n '/class="def"/p' | awk '{gsub(/.*<span class="def">|<\/span>.*/,"");print}' | sed "s/<[^>]\+>//g";
}

source ~/.profile
alias pp="~/Documents/svn/tcsiwula/cs220/"

##
# Your previous /Users/timsiwula/.bash_profile file was backed up as /Users/timsiwula/.bash_profile.macports-saved_2015-10-15_at_19:40:45
##

# MacPorts Installer addition on 2015-10-15_at_19:40:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/timsiwula/.bash_profile file was backed up as /Users/timsiwula/.bash_profile.macports-saved_2015-10-15_at_20:54:39
##

# MacPorts Installer addition on 2015-10-15_at_20:54:39: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/usr/local/bin:$PATH






# for mpich installation
# http://apple.stackexchange.com/questions/102012/openmpi-already-installed-in-os-x
export MPI_DIR=/usr/local/openmpi
export PATH=/usr/local/openmpi/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/openmpi/lib:$LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$LD_LIBRARY_PATH
