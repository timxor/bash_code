# file:         /Users/tim/.zshrc
# computer:     MacBook Pro, 16-inch, 2021
# open:         atom ~/.zshrc
# update:       source ~/.zshrc
#
# related files:
#
# atom ~/.zprofile
# atom ~/.zshenv
# 
# 

alias sshmac="ssh tim@192.168.1.128"

alias vmstat="vm_stat 5



"
alias history="history 1"
alias gpt="python gpt_cli.py"
alias addcommand="atom ~/.zshrc"
alias addc="atom ~/.zshrc"
alias uc="source ~/.zshrc"
alias update="source ~/.zshrc"
alias bu="brew update && brew upgrade && brew cleanup && clear"
alias c="clear"
alias h="history"
alias dk="cd /Users/tim/Desktop && clear && pwd"
alias dl="cd /Users/tim/Downloads && clear && pwd"
alias code="cd /Users/tim/code && clear && pwd"
alias deploy="bash deploy_script.sh"
#  global git ignore file:
#    ~/.gitignore_global
alias addgit="atom ~/.gitignore_global"
#  ssh config files:
#    ~/.ssh/config
alias addssh="atom ~/.ssh/config"
alias lc="cd /Users/tim/code/lc && clear && pwd"
alias sd="cd /Users/tim/code/lc/SystemDesign && clear && pwd"
alias tim="cd /Users/tim/code/timsiwula.com && clear && pwd"


# django
alias reboot="pkill -f runserver"
alias start="nodemon --exec python3 manage.py runserver && http://127.0.0.1:8000/"
alias portfolio="cd /Users/tim/code/timsiwula.com/app/portfolio-project && clear && pwd && ls -la"
alias timsiwula.com="cd /Users/tim/code/timsiwula.com/app/portfolio-project && clear && pwd && ls -la"
alias website="cd /Users/tim/code/timsiwula.com/app/portfolio-project && clear && pwd && ls -la"
alias timsiwula="cd /Users/tim/code/timsiwula.com/app/portfolio-project && clear && pwd && ls -la"


# python virtualenvwrapper
export PATH="$PATH:/Users/tim/Library/Python/3.8/bin"



# gpg
export GPG_TTY=$TTY



# atom editor github fork local dev 
export ATOM_DEV_RESOURCE_PATH=$HOME/code/atom/

# linux commands
alias vmstat="vm_stat"


# conda
export PATH="/usr/local/anaconda3/bin:$PATH"


# golang / go
export GOPATH=$HOME/go/ 
export GOROOT=/usr/local/go  
export PATH="$GOROOT/bin:$PATH" 
export PATH="$PATH:$GOPATH/bin"

# export GOPATH="$HOME/go"
# PATH="$GOPATH/bin:$PATH"





#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# grpc
export CXXFLAGS="-I/usr/local/include" LDFLAGS="-L/usr/local/lib"
# java maven mvn ? for grpc protobufs
export PATH=$PATH:/Users/tim/.sdkman/candidates/java/17.0.1-tem/bin


# zsh compinit: insecure directories, run compaudit for list.
# Ignore insecure directories and continue [y] or abort compinit [n]? y
export ZSH_DISABLE_COMPFIX=true

# zsh
# fpath=(~/.zsh/completion $fpath)
# autoload -Uz xport ; compinit

export PATH="$PATH:/Users/tim/Library/Application Support/Coursier/bin"

export NVM_DIR="/Users/tim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# homebrew silent warning
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

# gpg auto sign commit messages
# 
https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
  else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# zsh completion
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi


# hadoop
JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

## HADOOP env variables
export HADOOP_HOME="/usr/local/Cellar/hadoop/3.3.1/libexec"
export PATH=$PATH:$HADOOP_HOME/bin
export PATH=$PATH:$HADOOP_HOME/sbin
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar

## HIVE env variables
export HIVE_HOME=/usr/local/Cellar/hive/3.1.2_3/libexec
export PATH=$PATH:/$HIVE_HOME/bin
export GPG_TTY=$(tty)


export PATH="/opt/homebrew/opt/bison/bin:$PATH"


# apache thrift
export PATH="/usr/local/opt/thrift@0.16.0/bin:$PATH"export GPG_TTY=$(tty)


source ~/.bash_profile


# rabbit mq server
export PATH=$PATH:/usr/local/sbin




# flutter
export PATH="$PATH:/Users/tim/flutter/bin"


# flutter very_good cli tool
export PATH="$PATH":"$HOME/.pub-cache/bin"


## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
# [[ -f /Users/tim/.dart-cli-completion/zsh-config.zsh ]] && . /Users/tim/.dart-cli-completion/zsh-config.zsh || 
true
## [/Completion]


## openai chatgpt api key
export OPENAI_API_KEY='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'
export ELEVENLABS_API_KEY='353c513f66b60a886e4ec219fe2baaec'


# github personal access token (2023)
export GITHUB_API_KEY='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'

# CocoaPods -- https://guides.cocoapods.org/using/getting-started.html#installation
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH





# java
export JAVA_HOME=$(/usr/libexec/java_home)


# jenv java version manager
export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# see if works
# jenv versions
#
# * system (set by /Users/tim/.jenv/version)
#
#



# python
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.8/bin"
export PATH="$PATH:/Users/tim/Library/Python/3.8/bin"


export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
alias python=/usr/bin/python3
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export GPG_TTY=$(tty)

