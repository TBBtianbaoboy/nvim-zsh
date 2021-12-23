# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jonathan"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
    z
    gitfast
	docker
	docker docker-compose
	golang
	sudo     #自动添加sudo ,两下esc
	extract #万能解压 x 压缩包名
	ripgrep
    kubectl
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#vim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
#dnf 
alias dnfi="sudo dnf install -y "
alias dnfr="sudo dnf remove "
alias dnfs="sudo dnf search "
#ls
alias ls='lsd'
alias lsl='ls -lh'
alias lsa='ls -a'
alias lst='ls --tree'
#mkdir
alias mkdir='mkdir -p'
#rm
alias rm='rm -fvi'
alias rmdir='rm -frv'
#mv
alias mv='mv -i'
#clear
alias c='clear;'
#nc扫描tcp,udp指定端口
alias nctcp='nc -vz -w10'
alias ncudp='nc -vzu -w10'
# Golang
export GOPATH="$HOME/go"
export GOBINPATH="$HOME/go/bin"
export GOPROXY=https://goproxy.io,direct
export GO111MODULE=on
#k8s
# export KUBECONFIG=/etc/kubernetes/admin.conf
#minikube
##export NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24

#docker
alias docker='sudo docker'
#directory stack
alias pd='pushd'
alias dp='popd'
alias cat='bat'
#tldr
alias tldr='tldr -t ocean'
#calcurse
alias calp='calcurse'
#man retry to nvim
export MANPAGER='nvim +Man!'
#grpc config 
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export LD_LIBRARY_PATH=/usr/local/lib
#update default editor,don't use nano 
export EDITOR=nvim
#private env 
alias nla='v ~/github/note/linux/all.sh'
alias nlv='v ~/github/note/linux/nvim.sh'
alias nlc='v ~/github/note/linux/command.sh'
alias nlk='v ~/github/note/linux/kernel.sh'
alias nlt='cd ~/github/note/tools'
alias np='v ~/github/note/passwd/note.sh'
#clash proxy
##export http_proxy=http://127.0.0.1:7890 && export https_proxy=http://127.0.0.1:7890
##unset http_proxy && unset https_proxy

#enjory_tools
eval $(thefuck --alias)

for i in {0..9}; do bindkey -r "^[$i"; done
#node
export PATH=$PATH:/usr/local/node/bin
#grpc
export PATH=$PATH:/home/aico/go/bin
#easy function
function cl { cd $1; ls; }
#cd using dir stack
function cs(){
    cd -$1
    ls
}

#有色cat //abandon --------------------------------replace by bat
# function ccat() {
#     local style="monokai"
#     if [ $# -eq 0 ]; then
#         pygmentize -P style=$style -P tabsize=4 -f terminal256 -g
#     else
#         for NAME in $@; do
#             pygmentize -P style=$style -P tabsize=4 -f terminal256 -g "$NAME"
#         done
#     fi
# }
#自动解压
function auto-extract() {
if [ -f $1 ] ; then
        case $1 in
        *.tar.bz2)   tar -xvjf $1    ;;
        *.tar.gz)    tar -xvzf $1    ;;
        *.tar.xz)    tar -xvJf $1    ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       rar x $1       ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar -xvf $1     ;;
        *.tbz2)      tar -xvjf $1    ;;
        *.tgz)       tar -xvzf $1    ;;
        #消除中文乱码
        *.zip)       unzip -O cp936 $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file"
fi
}
#自动归档
function auto-compress() {
if [ -n "$1" ] ; then
        FILE=$1
        case $FILE in
        *.tar) shift && tar -cf $FILE $* ;;
        *.tar.bz2) shift && tar -cjf $FILE $* ;;
        *.tar.xz) shift && tar -cJf $FILE $* ;;
        *.tar.gz) shift && tar -czf $FILE $* ;;
        *.tgz) shift && tar -czf $FILE $* ;;
        *.zip) shift && zip $FILE $* ;;
        *.rar) shift && rar $FILE $* ;;
        esac
    else
        echo "usage: q-compress <foo.tar.gz> ./foo ./bar"
    fi
}

#git diff with nvim 
alias gdvim='git difftool -t nvimdiff'

#weather reporter
alias wea='curl wttr.in'
#dust
alias dup='dust'
#duf
alias dfp='duf'
#copy to clipboard 
alias pbcopy='xsel --clipboard --input'
#paste from clipboard
alias pbpaste='xsel --clipboard --output'
# google-chorme 
alias google='google-chrome'
# xdg-open any 
alias open='xdg-open'
# redis client 
alias redis='sudo /snap/bin/redis-desktop-manager.rdm'

source /home/aico/.config/broot/launcher/bash/br

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
