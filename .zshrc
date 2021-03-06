# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"


# ====================
# ===   Exports    ===
# ====================

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# =============================
# ===   General settings    ===
# =============================

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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


# ============================================
# ===   Completion and Highlight styles    ===
# ============================================

# ZSH_COLORIZE_STYLE="colorful"

# ====================
# ===   Plugins    ===
# ====================

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	autojump
	battery
	bgnotify
	colored-man-pages
	colorize
	common-aliases
	copydir
	copyfile
	dircycle
	extract
	git
	gitignore
	history
	man
	sudo
)


# ======================================
# ===   Execute initializaion        ===
# ===   Needs to be after 'plugins'  ===
# ======================================

source $ZSH/oh-my-zsh.sh


# =============================
# ===   Personal Aliases    ===
# =============================

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias rm="rm -vf"
alias cp="cp -g"
alias mv="mv -g"

alias upd="sudo apt update"
alias upg="sudo apt upgrade"
alias showls="sudo apt list --upgradable"
alias rmup="sudo apt autoclean; sudo apt autoremove"
alias dpkg-install="sudo dpkg -i"
alias dpkg-purge="sudo dpkg -P"

alias iflan="ifconfig enp2s0"
alias ifwls="ifconfig wlp3s0"
alias prs="ps aux | grep"
alias kernelversion="uname -romi"
alias linuxversion="lsb_release -a"
alias zshconfig="vim ~/.zshrc"
alias temp-info="watch -n 2 sensors"
alias jup-notebook="cd /media/$USER/Storage/Mega/Notebooks/; jupyter notebook"

alias py="python3"
alias tar-pack="tar -czvf"		# [..archivo a crear..] [..origen de la carpeta..]
alias tar-umpack="tar -xzvf archivo.tar.gz"		# [..archivo a descomprimir..]
### alias buscar-ip='for i in `seq 20 30`; do ping -c2 10.58.1.$i | egrep '(ttl|bytes)'; done'

## SERVICES
alias ufwstart="sudo ufw enable"
alias ufwstop="sudo ufw disable"
alias ufwrestart="sudo ufw disable; sudo ufw enable"
alias ufwview="sudo ufw status numbered"

alias sambastart="sudo i/etc/init.d/smbd start; sudo /etc/init.d/nmbd start"
alias sambastop="sudo /etc/init.d/smbd stop; sudo /etc/init.d/nmbd stop"
alias sambarestart="sudo /etc/init.d/smbd restart; sudo /etc/init.d/nmbd restart"


# =========================
# ===   Fuzzy Finder    ===
# =========================

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# =================
# ===   Other   ===
# =================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

