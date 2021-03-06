# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="mod-agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh root_indicator background_jobs virtualenv context dir vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh root_indicator background_jobs virtualenv vcs dir)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_BATTERY_STAGES=($'\u2581' $'\u2582' $'\u2583' $'\u2584' $'\u2585' $'\u2586' $'\u2587' $'\u2588')
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
# POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

export WORKON_HOME="$HOME/.virtualenvs"
DISABLE_UPDATE_PROMPT=true

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  command-not-found
  fast-syntax-highlighting
  git
  # helm
  pip
  python
  sudo
  virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# [ -f /etc/profile.d/vte-2.91.sh ] && source /etc/profile.d/vte-2.91.sh
source /etc/profile.d/vte.sh

source /home/tgrining/.local/bin/virtualenvwrapper.sh
export PYTHONPATH="${PYTHONPATH}:$HOME/.virtualenvs"  # sure this won't impact performance of lsp?
export PYTHONPATH="${PYTHONPATH}:$HOME"
export VIRTUALENVWRAPPER_PYTHON=`which python3`
export VIRTUAL_ENV_DISABLE_PROMPT=1 #not needed anymore with agnoster

alias cd..='cd ..'
#LC_NUMERIC="en_US.UTF-8"
alias p3='ipython'
alias mdview='google-chrome-stable'
alias e="emacsclient -t"
alias ee="emacsclient -c"
export EDITOR="emacsclient -c"
export VISUAL="emacsclient -c"
# alias cal='ncal -C'
alias cal='cal -m'
alias sl='ls' #no trains for me
alias LS='ls'
alias pyt='pytest -nauto -sxk ""'
alias mkvirtualenv='mkvirtualenv --python=/usr/bin/python3 -a `pwd` `pwd | rev | cut -f 1 -d "/" | rev`'
alias rmvirtualenv='deactivate && rmvirtualenv `pwd | rev | cut -f 1 -d "/" | rev`'
alias refvirtualenv='rmvirtualenv && mkvirtualenv'
alias ll='ls -alh'
alias vi='vim'
alias supen='cd ~/pypen && cd dpypen && workon pypen && supen'
alias suink='cd ~/pypen && cd dpypen && workon pypen && suink'
# alias sppen='cd ~/pypen && cd pypen && ~/.virtualenvs/pypen/bin/python ~/pypen/pypen/pypen.py sp'
# alias siink='cd ~/pypen && cd pypen && ~/.virtualenvs/pypen/bin/python ~/pypen/pypen/pypen.py si'
# alias lpen='cd ~/pypen && cd pypen && ~/.virtualenvs/pypen/bin/python ~/pypen/pypen/pypen.py lp'
# alias link='cd ~/pypen && cd pypen && ~/.virtualenvs/pypen/bin/python ~/pypen/pypen/pypen.py li'
alias ranger='ranger --choosedir=/tmp/.rangerdir; LASTDIR=`cat /tmp/.rangerdir`; cd "$LASTDIR"'
alias py3clean='find . -name \*.pyc -delete'
export PYTHONBREAKPOINT=pdb.set_trace

export PATH_TO_HTML=/tmp

cd `pwd`

if [[ "$TERM" == "dumb" ]]
then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PS1='$ '
fi

dbus-update-activation-environment --all

export FC="gfortran"
export CXX="g++"
export CC="gcc"

PATH="$PATH:/home/tgrining/bin"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



###################
# Legartis-specific
###################

alias npmplease="rm -rf node_modules/ && rm -f package-lock.json && npm install"

# source $HOME/legartis/services/util/scripts/bash_init_scripts.sh

function dsr() {
        CONTAINER_NAME=$1
        if [ -z "$CONTAINER_NAME" ]; then
                echo "Name must not be empty"
        else
                echo
                echo "Searching containers with name=$1..."
                docker ps -a --filter="name=$CONTAINER_NAME"
                echo
                echo "Stopping containers..."
                docker ps -aq --filter="name=$CONTAINER_NAME" | awk '{print $1 }' | xargs -I {} docker stop {}
                echo
                echo "Removing containers..."
                docker ps -aq --filter="name=$CONTAINER_NAME" | awk '{print $1 }' | xargs -I {} docker rm {}
                #docker stop $(docker ps -a -q --filter="name=$CONTAINER_NAME")
        fi
}

alias oclogin='oc login -u legr-tgrinig1 && oc whoami -t | docker login --username "$(oc whoami)" --password-stdin registry.appuio.ch'
alias ocloginexoscale='oc login https://console.ch-gva-2.exo.appuio.ch -u legr-tgrinig1 && oc whoami -t | docker login --username "$(oc whoami)" --password-stdin registry.ch-gva-2.exo.appuio.ch'
alias oclogincloudscale='oc login https://console.appuio.ch -u legr-tgrinig1 && oc whoami -t | docker login --username "$(oc whoami)" --password-stdin registry.appuio.ch'

alias legartis_fake_start='docker start legartis-postgres && docker start legartis-redis'

alias legartis_start='dsr legartis && cd ~/legartis/ && cd services/backend/annotation-service/annotation_service/annotation_service && python manage.py run_containers && cd ~/legartis/'

alias lm='lmigrate ds && lmigrate as && lmigrate ss && lmigrate rs && lmigrate ws && lmigrate os && lmigrate ml && lmigrate ps && lmigrate us && lmigrate qs'

export PYTHONPATH="${PYTHONPATH}:/home/tgrining/machine-learning/"

alias k='kubectl'

alias ap='ansible-playbook'

alias run_containers='ansible-playbook $HOME/legartis/deployments/container-manager/run-containers.yml'
alias pycharm_inspect='/opt/pycharm-professional/bin/pycharm.sh inspect /home/tgrining/legartis /home/tgrining/legartis/.idea/inspectionProfiles/profiles_settings.xml /home/tgrining/inspection_results -v2 -format plain'
alias venv='source ~/.virtualenvs/legartis/bin/activate'


function klp() {
    kubectl logs $1 $2 -f
}
function kdp() {
    kubectl describe pod $1
}
function kepc() {
   k exec $1 --stdin --tty -c $2 /bin/bash
}
function kep() {
    k exec $1 --stdin --tty /bin/bash
}
function kepshc() {
    k exec $1 --stdin --tty -c $2 /bin/sh
}
function kepsh() {
    k exec $1 --stdin --tty /bin/sh
}

export NEXTCLOUD_FOLDER_NAME="Nextcloud2"
