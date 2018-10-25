#-----------------------------------------------------------------------------
# Author:         Tim Siwula <tcsiwula@gmail.com>
# File:           ~/.zshrc
# Date:           09/06/2017
#-----------------------------------------------------------------------------
# Edit:           atom /usr/local/bin/sync_master_develop.sh
# Update:         bash /usr/local/bin/sync_master_develop.sh
#-----------------------------------------------------------------------------

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#                 ALIAS COMMANDS
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
alias benchp="cd $HOME/Dropbox/Projects/parity && pwd"
alias benchc="cd $HOME/Dropbox/Projects/cpp-ethereum && pwd"
alias benchg="cd /Users/tim.siwula/Dropbox/Projects/go-ethereum/core/vm && pwd"
alias google="gcloud compute ssh high-memory-instance1-zone-us-west1a-260-per-month"
alias projects="cd /Users/tim.siwula/Dropbox/Projects/ && pwd && ls -la"
alias projectsgo="cd /Users/tim.siwula/go/src/github.com/tcsiwula && pwd && ls -la"
alias rlp="cd /Users/tim.siwula/Dropbox/Projects/pier-rlp && pwd"
alias zksnark="cd /Users/tim.siwula/Dropbox/Projects/zero-knowledge-proofs && pwd"

# located: /usr/local/bin/deploy_script.sh
alias deploy="bash deploy_script.sh"

# located: /usr/local/bin/sync_master_upstream.sh
alias syncm="bash sync_master_upstream.sh"

#/usr/local/bin/sync_master_develop.sh
alias syncd="bash sync_master_develop.sh"

alias addcommand="atom ~/.zshrc"
alias addc="addcommand"

# only for bash shell
#alias updatecommand="source ~/.zshrc"
alias updatecommand=". ~/.zshrc"

alias uc="updatecommand"
alias bashcode="cd /Users/tim.siwula/Dropbox/Projects/bash_code && pwd"

alias a="atom"
alias o="open ."
alias c="clear"
alias C="clear"
alias h="history"


alias addssh="atom ~/.ssh/config"
alias az="ssh tim@52.173.149.93"
alias pegasys="go run cli.go pegasys"


#-----------------------------------------------------------------------------
alias sp="stat -f \"%A %N\" *"     # show permissions
#-----------------------------------------------------------------------------

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tim.siwula/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/tim.siwula/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/tim.siwula/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/tim.siwula/google-cloud-sdk/completion.zsh.inc'; fi

#homebrew
export PATH=/usr/local/bin:$PATH

# golang config
export GOROOT="/usr/local/go"
# directory of your go workspace
export GOPATH="/Users/tim.siwula/go"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

#-------------------------------------------------------------
# Quorum and constellation configs
#-------------------------------------------------------------
export PATH=$HOME/Dropbox/Projects/quorum/0.0_quorum/quorum/build/bin:$PATH
export PATH=/Users/tim.siwula/.local/bin:$PATH
#source '/Users/tim.siwula/lib/azure-cli/az.completion'

#nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"



# go env setup
# https://www.youtube.com/watch?v=FTDOW8UbKjQ
# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=/Users/tim.siwula/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
export PS1="happy_mbp=>"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"













# export PATH="$HOME/.cargo/bin:$PATH"
# export JAVA_HOME=`/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home`
#
#
# #
# #       gpg auto sign/commit logic
# #       https://gist.github.com/bmhatfield/cc21ec0a3a2df963bffa3c1f884b676b
#
# # In order for gpg to find gpg-agent, gpg-agent must be running, and there must be an env
# # variable pointing GPG to the gpg-agent socket. This little script, which must be sourced
# # in your shell's init script (ie, .bash_profile, .zshrc, whatever), will either start
# # gpg-agent or set up the GPG_AGENT_INFO variable if it's already running.
#
# # Add the following to your shell init to set up gpg-agent automatically for every shell
# if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
#     source ~/.gnupg/.gpg-agent-info
#     export GPG_AGENT_INFO
# else
#     eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
# fi
#
#

