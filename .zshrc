plugins=(sudo web-search copydir copyfile copybuffer vi-mode terraform gcloud helm kubectl pep8 pylint sudo golang colorize ansible docker)


export ZSH="/Users/karl/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  bundler
  dotenv
  osx
  rake
  zsh-autosuggestions
  last-working-dir
  web-search
  cloudfoundry
)

# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
source $ZSH/oh-my-zsh.sh
source /Users/karl/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# z extension for browsing
. ~/z.sh

# user configuration
# custom aliases
alias c="code .";
alias ll="ls -1a";
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias pg="echo 'Pinging Google' && ping www.google.com";
alias de="cd ~/Desktop";
alias dd="cd ~/code";
alias d="cd ~/code && cd "
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias npm-update="npx npm-check -u";
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

## git aliases
function gc { git commit -m "$@"; }
alias gcm="git checkout master";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gb="git branch";
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

## checkout a new remote branch (exists remote, not locally)
## git checkout -b LocalName origin/remotebranchname (checkout a remote branch)

## npm aliases
alias ni="npm install";
alias nrs="npm run start -s --";
alias nrb="npm run build -s --";
alias nrd="npm run dev -s --";
alias nrt="npm run test -s --";
alias nrtw="npm run test:watch -s --";
alias nrv="npm run validate -s --";
alias rmn="rm -rf node_modules";
alias flush-npm="rm -rf node_modules && npm i && echo NPM is done";

## yarn aliases
alias yar="yarn run"; # lists all the scripts we have available
alias yab="yarn build"; # build dist directory for each package
alias yal="yarn lint:fix"; # format source and auto-fix eslint issues
alias yac="yarn commit"; # open a Q&A prompt to help construct valid commit messages
alias yas="yarn start";
alias yasb="yarn storybook:start"; # start storybook
alias yat="yarn test"; # run the unit tests*
alias yatw="yarn test:watch"; #run the unit tests for files changed on save

## docker
alias dockerstop='docker-compose stop'
alias dockerrestart='docker-compose restart'
alias dockerup='docker-compose up -d'
alias dockerrm='docker-compose rm --all'

## other aliases
alias zshrc='code ~/.zshrc'
alias topten="history | commands | sort -rn | head"
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias update="source ~/.zshrc"
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias md="mkdir "
alias ..='cd ..'
alias ...='cd ../..'

## this loads NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

## custom functions
gpr() {
  if [ $? -eq 0 ]; then
    github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@' -e 's%\.git$%%'`;
    branch_name=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3`;
    pr_url=$github_url"/compare/master..."$branch_name
    open $pr_url;
  else
    echo 'failed to open a pull request.';
  fi
}

commands() {
  awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}



#### https://sourabhbajaj.com/mac-setup/iTerm/zsh.html
plugins=(git colored-man-pages colorize pip python brew osx)
ZSH_THEME="pygmalion"

# check vim config at https://github.com/wickett/wickett-vim

# https://trofimovdigital.ru/blog/oh-my-zsh#Oh_My_Zsh_%D0%B2_%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D0%B8
ZSH_THEME="agnoster"
# Fonts
cd ~/Downloads/
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
# Рекомендую попробовать цветовые схемы iTerm2 Material Design или тему Dracula.

###https://gist.github.com/clawfire/4337569
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
 alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github brew cloudapp encode64 git-flow hostory-substring-search osx sublime svn extract rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:/usr/local/zend/bin:/usr/local/zend/mysql/bin:$HOME/.rvm/scripts/rvm

# Allow us to edit the command line into our prefered editor
autoload edit-command-line
zle -N edit-command-line
bindkey '^XÊ' edit-command-line
EDITOR=mate

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#https://dev.to/manan30/what-is-the-best-zshrc-config-you-have-seen-14id

# Created by manan for 4.4.2

#Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
ssh
dir
vcs
newline
status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='red'
# POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='blue'

# Options for setting colors to directories.

# POWERLEVEL9K_DIR_HOME_BACKGROUND=red
# POWERLEVEL9K_DIR_HOME_FOREGROUND=white
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=red
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=white
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=yellow
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=black
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=red
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=white

# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/Spaces/Editor-Settings/powerlevel9k/powerlevel9k.zsh-theme

HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOMEBREW_FOLDER/zsh-history-substring-search/zsh-history-substring-search.zsh"

autoload -Uz compinit;
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist

#History setup
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZ

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt auto_cd # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate #enable approximate matches for completion

#Plugins setup
source <(antibody init)
antibody bundle zdharma/fast-syntax-highlighting > ~/.zshrc.log
antibody bundle zsh-users/zsh-autosuggestions > ~/.zshrc.log
antibody bundle zsh-users/zsh-history-substring-search > ~/.zshrc.log
antibody bundle zsh-users/zsh-completions > ~/.zshrc.log
antibody bundle /Users/manan/Spaces/Editor-Settings/ZSH-Plugins/oh-my-zsh-master/plugins/osx > ~/.zshrc.log
# antibody bundle robbyrussell/oh-my-zsh path:plugins/heroku > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/node > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/web-search > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/sudo > ~/.zshrc.log
antibody bundle robbyrussell/oh-my-zsh path:plugins/react-native > ~/.zshrc.log
# antibody bundle robbyrussell/oh-my-zsh path:plugins/kubectl > ~/.zshrc.log
# antibody bundle robbyrussell/oh-my-zsh path:plugins/npm > ~/.zshrc.log
antibody bundle JamesKovacs/zsh_completions_mongodb > ~/.zshrc.log
source /usr/local/aws/bin/aws_zsh_completer.sh

autoload -Uz compinit;compinit -i

# Aliases

alias grep=ack
alias digitalocean="ssh digitalocean"
alias ls="colorls"
alias python="python3"
alias pip="pip3"
alias easy-install="easy_install-3.7"
alias config="vi $HOME/.zshrc"
alias projects="cd $HOME/Spaces/Projects"
alias reload="source $HOME/.zshrc"

# Git aliases
alias gi="git init"
alias gs="git status -sbu"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git push"
alias gm="git merge"
alias ga="git add ."
alias gcm="git commit -m"
alias gpl="git pull"
alias gst="git stash"
alias gstl="git stash list"
alias glg='git log --graph --oneline --decorate --all'

# Exports
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-toolsz

export GOPATH=/Users/manan/.golib
export PATH=$GOPATH/src:$PATH
export GOPATH=$GOPATH:/Users/manan/Spaces/Projects/Go

export PATH="/usr/local/opt/libpcap/bin:$PATH"

fpath=(/usr/local/share/zsh-completions $fpath)
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

export PYTHON3PATH=/Library/Frameworks/Python.framework/Versions/3.7
export PATH=$PYTHON3PATH/bin:$PATH

export PATH=/usr/local/aws/bin:$PATH

export PATH=$PATH:$HOME/sdk/flutter/bin

# added by travis gem
[ -f /Users/manan/.travis/travis.sh ] && source /Users/manan/.travis/travis.sh

# Misc
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Tab title
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

# Create a new react app

react-app() {
  npx create-react-app $1
  cd $1
  npm i -D eslint
  npm i -D eslint-config-prettier eslint-plugin-prettier
  npm i -D eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react eslint-plugin-react-hooks
  cp "${HOME}/.eslintrc.json" .
  cp "${HOME}/.prettierrc" .
  echo $1 > README.md
  rm -rf yarn.lock
  cd src
  rm -f App.css App.test.js index.css logo.svg serviceWorker.js
  mkdir components views 
  git add -A
  git commit -m "Initial commit."
  cd ..
  clear
  code .
}

##### https://matt.blissett.me.uk/linux/zsh/zshrc

# My .zshrc file
#
# Written by Matthew Blissett.
#
# Latest version available from https://matt.blissett.me.uk/linux/zsh/zshrc
#
# Some of this is my own creation, other functions are taken from various
# web sites or mailing lists, including:
# - http://leahneukirchen.org/dotfiles/.zshrc
#
# Last updated 2019-05-12
#
# Released into the public domain.
#

# Skip all this for non-interactive shells
[[ -z "$PS1" ]] && return

# Set prompt
# Exit status indicator in red (if not 0)
# Background job count in yellow (if not 0)
# Date in white, host in magenta, directory in default, prompt character
# Example:
#     1J 23:06:26 ig:~ >
PS1=$'%(?..%B%K{red}[%?]%K{def}%b )%(1j.%b%K{yel}%F{bla}%jJ%F{def}%K{def} .)%F{white}%B%*%b %F{mag}%m:%F{white}%~ %(!.#.>) %F{def}'
#     <------- exit status -------><------- background job count ----------><--- time ---->-< host ->-< cur dir >-<------> <----->
# (See 'EXPANSION OF PROMPT SEQUENCES' in zshmisc.)

# Completion system
autoload -Uz compinit
compinit

# Set less options
if [[ -x $(which less 2> /dev/null) ]]; then
    export PAGER="less"
    export LESS="--ignore-case --LONG-PROMPT --QUIET --chop-long-lines -Sm --RAW-CONTROL-CHARS --quit-if-one-screen --no-init"
    export LESSHISTFILE='-'
    if [[ -x $(which lesspipe 2> /dev/null) ]]; then
        LESSOPEN="| lesspipe %s"
        export LESSOPEN
    fi
fi

# Set default editor
if [[ -x $(which emacs 2> /dev/null) ]]; then
    export EDITOR="emacs"
    export USE_EDITOR=$EDITOR
    export VISUAL=$EDITOR
fi

# FAQ 3.10: Why does zsh not work in an Emacs shell mode any more?
###### http://zsh.sourceforge.net/FAQ/zshfaq03.html#l26
[[ $EMACS = t ]] && unsetopt zle

# Zsh settings for history
HISTORY_IGNORE="(ls|[bf]g|exit|reset|clear|cd|cd ..|cd..)"
HISTSIZE=25000
HISTFILE=~/.zsh_history
SAVEHIST=100000
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# nf [-NUM] [COMMENTARY...] -- never forget last N commands
nf() {
  local n=-1
  [[ "$1" = -<-> ]] && n=$1 && shift
  fc -lnt ": %Y-%m-%d %H:%M ${*/\%/%%} ;" $n | tee -a .neverforget
}

# imgur - post image to imgur.com
# 20jul2014  +chris+  zsh function
# 01apr2016  +chris+  use api v3
imgur() {
  curl -H "Authorization: Client-ID 3e7a4deb7ac67da" -F image=@$1 \
    https://api.imgur.com/3/upload | sed 's/.*http/http/; s/".*/\n/; s,\\/,/,g'
}

# sprunge FILES... - paste to sprunge.us
# 20jul2014  +chris+  zsh function
sprunge() {
  local f
  if [ $# -lt 2 ]; then
    cat "$@"
  else
    for f; do
      echo "## $f"
      cat "$f"
      echo
    done
  fi | curl -sF 'sprunge=<-' http://sprunge.us | tr -d ' '
}

#http://chneukirchen.org/dotfiles/.zshrc

# Say how long a command took, if it took more than 30 seconds
export REPORTTIME=120

# Update the prompt (i.e. the clock) before executing a command
TRAPDEBUG() {
  case "$WIDGET" in
    zle-line-finish)
      zle reset-prompt
      ;;
    *)
      ;;
  esac
}

# Colour output on Mac OS
export CLICOLOR=1

# Zsh spelling correction options
#setopt CORRECT
#setopt DVORAK

# Prompts for confirmation after 'rm *' etc
# Helps avoid mistakes like 'rm * o' when 'rm *.o' was intended
setopt RM_STAR_WAIT

# Background processes aren't killed on exit of shell
setopt AUTO_CONTINUE

# Don’t write over existing files with >, use >! instead
setopt NOCLOBBER

# Don’t nice background processes
setopt NO_BG_NICE

# Watch other user login/out
watch=notme
export LOGCHECK=60

# Stop at / when deleting
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# Enable color support of ls
if [[ "$TERM" != "dumb" ]]; then
    if [[ -x `which dircolors 2> /dev/null` ]]; then
        eval `dircolors -b`
        if ls --color &> /dev/null; then
            alias 'ls=ls --color=auto'
        fi
    fi
fi

# Why is the date American even when the locale is en_GB?  Choose ISO form anyway.
export TIME_STYLE="long-iso"

# Commas in ls, du, df output
export BLOCK_SIZE="'1"

# No quoting spaces in newer coreutils
export QUOTING_STYLE=literal

# Short command aliases
alias 'l=ls'
alias 'la=ls -A'
alias 'll=ls -l'
alias 'llh=ls -l --si'
alias 'lq=ls -Q'
alias 'lr=ls -R'
alias 'lrs=ls -lrS'
alias 'lrt=ls -lrt'
alias 'lrta=ls -lrtA'
alias 'lrth=ls -lrth --si'
alias 'lrtha=ls -lrthA --si'
alias 'j=jobs -l'
alias 'kw=kwrite'
alias 'tf=tail -F'
alias 'grep=grep --colour --devices=skip --exclude-dir=.git'
alias 'vnice=nice -n 20 ionice -c 3'
alias 'get_iplayer=get_iplayer --nopurge'
alias 'get-iplayer=get-iplayer --nopurge'
alias "tree=tree -I 'CVS|.git|*~'"
alias 'lo=z loffice'
alias 'idea=z intellij-idea-community'
alias 'synchist=fc -RI'

# Useful KDE integration
alias 'k=kate -u' # -u is reuse existing session if possible
alias 'white=konsoleprofile colors=SolarizedLight'
alias 'black=konsoleprofile colors=Linux'

# These are useful with the Dvorak keyboard layout
alias 'h=ls'
alias 'ha=la'
alias 'hh=ll'
alias 'hhh=llh'
alias 'hq=lq'
alias 'hr=lr'
alias 'hrt=lrt'
alias 'hrs=lrs'

# Play safe!
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'

# For Git
alias 'gk=z gitk --all'
alias 'gs=git status' # (NB overriding GhostScript)
alias 'gd=git diff'
alias 'gg=z git gui'
alias 'git-stashpullpop=git stash && git pull --rebase && git stash pop'
alias 'gl=git log --graph --abbrev-commit --pretty=oneline --decorate'

# For convenience
alias 'aspell=aspell --dont-backup'
alias 'mkdir=mkdir -p'
alias 'cal=ncal -b' # Weeks start on Monday
alias 'dmesg=dmesg --ctime'
alias 'df=df --exclude-type=tmpfs --exclude-type=devtmpfs --exclude-type=squashfs'
alias 'd.=df -h . |sed 1d'
alias 'dus=du -msc * .*(N) | sort -n'
alias 'dus.=du -msc .* | sort -n'
alias 'fcs=(for i in * .*(N); do echo $(find $i -type f | wc -l) "\t$i"; done) | sort -n'
alias 'fcs.=(for i in .*; do echo $(find $i -type f | wc -l) "\t$i"; done) | sort -n'
alias 'last=last -a'
alias 'zap=clear; echo -en "\e[3J"'
alias 'rmedir=rmdir -v **/*(/^F)'
alias 'xmlindent=xmlindent -t -f -nbe'
alias 'psqltsv=psql -X -t -A -F"	"'
alias 'qr=qrencode -t UTF8'

# Typing errors...
alias 'cd..= cd ..'

# Global aliases (expand whatever their position)
#  e.g. find . E L
alias -g :E='2> /dev/null'
alias -g :C='| wc -l'
alias -g :H='| head'
alias -g :L='|& less'
alias -g :S='| sort'
alias -g :SN='| sort -n'
alias -g :T='| tail'
unglobalalias() {
    for i in ':E' ':C' ':H' ':L' ':S' ':SN' ':T'; unalias $i
}

# Log file viewing
lastlogdir=logs
alias taillast='tail -f $lastlogdir/*(om[1])'
alias catlast='< $lastlogdir/*(om[1])'
alias lesslast='less $lastlogdir/*(om[1])'

# Build commands, etc
alias gdoc='zap; docker run --rm -it --user $(id -u):$(id -g) -v $PWD:/documents/ gbif/asciidoctor-toolkit build'
alias 'gdoc-continuous'='zap; docker run --rm -it --user $(id -u):$(id -g) -v $PWD:/documents/ gbif/asciidoctor-toolkit continuous'
alias hp='docker run -e JEKYLL_ENV=development -e JEKYLL_UID=$(id -u) -e JEKYLL_GID=$(id -g) --rm --volume="$PWD:/srv/jekyll" jekyll/jekyll:4.1.0 bash -c "gem sources --add https://repository.gbif.org/repository/rubygems.org/ && gem sources --remove https://rubygems.org/ && bundle config mirror.https://rubygems.org https://repository.gbif.org/repository/rubygems.org && echo && echo && echo && echo BUILD STARTING: && jekyll build --unpublished --strict-front-matter"'

# Quick TSV/CSV file formatting
tsv() {
    if [[ -t 1 ]]; then
        column --separator $'\t' --table $* | less
    else
        column --separator $'\t' --table $*
    fi
}
tsvn() {
    dir=$(mktemp -d)
    mkfifo $dir/firstline
    cat $* | tee $dir/firstline | \
        (seq -f '%g	' $(head -n 1 $dir/firstline | tr -dc '\t' | awk '{print length+1}') | tr -d '\n' | sed 's/	$/\n/'; \
         cat) \
        | tsv
    rm -Rf $dir
}
csv() {
    # csvtool
    if [[ -t 1 ]]; then
        csvtool readable $* | less
    else
        csvtool readable
    fi
}

# chop - limit lines to terminal size
# 14jun2016  +chris+
chop() { cut -c-${COLUMNS:-80} }

# SSH aliases
alias 'sshb=ssh matt@blissett.me.uk'
alias 'sshstop=ssh -O stop'

# SSH to shell[1234].doc.ic.ac.uk at random
sshdoc() {
    ssh mrb04@shell$(($RANDOM % 4 + 1)).doc.ic.ac.uk $*
}

# Remove a known host and its IP from the cache
ssh-knownhosts-remove() {
    ssh-keygen -R $1
    ssh-keygen -R $(dig $1 +short)
    ssh -O stop $1 &> /dev/null
}

ssh-knownhosts-remove-by-line() {
    echo "Not implemented"
    # sed -e '800d' | sponge...?
}

# Automatically background processes (no output to terminal etc)
z () {
    grey='\e[1;30m'
    norm='\e[m'
    outfile=$(mktemp --tmpdir ${1//\//}.XXX)
    echo "$grey$* &> $outfile$norm"
    $* &>! $outfile &!
}
compdef z=sudo

# Aliases to use this
# Use e.g. 'command gv' to avoid
for i in acroread akregator amarok ario audacity chromium darktable dolphin easytag eclipse \
    firefox gimp gpdf gpsprune gv gwenview hugin inkscape kate kmag konqueror ktorrent kwrite \
    libreoffice lobase localc lodraw loffice lomath loffice lowriter \
    okular openscad prusa-gcodeviewer prusa-gcodeviewer-alpha prusa-gcodeviewer-xz prusa-slicer prusa-slicer-alpha \
    see skype skypeforlinux super-slicer thunderbird vlc; do
    alias "$i=z $i"
done

# Quick find
f() {
    echo "find . -iname \"*$1*\""
    find . -iname "*$1*"
}

# Quick regex history search
zh() {
    pattern=^$(echo '(?=.*'${^@}')' | tr -d ' ')
    grep --text ~/.zsh_history --perl-regexp --regexp $pattern
}

# Remap Dvorak-Qwerty quickly
alias 'aoeu=setxkbmap us -option' # (British keyboard layout, no special options)
alias 'asdf=setxkbmap us dvorak -option compose:menu,terminate:ctrl_alt_bksp'

# Change between English and Danish
english() {
    export LANG=en_GB.UTF-8
    export LANGUAGE=en_GB:en
}
danish() {
    export LANG=da_DK.UTF-8
    export LANGUAGE=da_DK:da
}

# Bring emacs to foreground, or else edit last-modified file
e() {
    if [[ -n "$1" ]]; then
        files=( **/*$1*(.) )

        if [[ $#files = 1 ]]; then
            echo Selected $files[1]
            emacs $files[1]
        else
            echo Matched multiple files:
            echo $files
        fi
    else
        jobs emacs && fg emacs || emacs *(.om[1]^D)
    fi
}

# Change terminal title
title() {
    echo -ne "\033]30;$*\007"
}

# Update config files (master copies stored on server)
alias pull-config='(cd ~/.matt-config; git --git-dir=$HOME/.matt-config/.git pull --rebase && . ~/.zshrc)'

pull-config-regularly() {
    if [[ -z "$SSH_CONNECTION" ]]; then
        if after 1 day $HOME/.pull-config-regularly; then
            echo "Pulling config"
            pushd ~/.matt-config
            git pull --rebase
            popd
            touch $HOME/.pull-config-regularly
        fi
    fi
}
pull-config-regularly

# Check dot-files are up-to-date
~/.matt-config/make-links

# Named directories
hash -d config=$HOME/.matt-config
hash -d bin=$HOME/.matt-config/bin
hash -d log=/var/log

# notes — switch to current notes folder, creating it if needed
notes xxx () {
  set +e
  DIR=~/$0/$(date +%G/%V)
  [[ -d $DIR ]] || {
    mkdir -p $DIR
    ln -sfn $DIR ~/$0/current
    echo "Created $DIR."
  }
  cd ~/$0/current
}

# mkcd -- mkdir and cd at once
mkcd() { mkdir -p -- "$1" && cd -- "$1" }
compdef mkcd=mkdir

# When directory is changed set xterm title to host:dir
chpwd() {
    [[ -t 1 ]] || return
    case $TERM in
        sun-cmd) print -Pn "\e]l%~\e\\";;
        *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%m:%~\a";;
    esac
}

# For changing the umask automatically
chpwd () {
    case $PWD in
        $HOME/[Dd]ocuments*)
            if [[ $(umask) -ne 077 ]]; then
                umask 0077
                echo >&2 -e "\033[01;32mumask: private \033[m"
            fi;;
        /nothing)
            if [[ $(umask) -ne 072 ]]; then
                umask 0072
                echo >&2 -e "\033[01;33mumask: other readable \033[m"
            fi;;
        /nothing)
            if [[ $(umask) -ne 002 ]]; then
                umask 0002
                echo >&2 -e "\033[01;35mumask: group writable \033[m"
            fi;;
        *)
            if [[ $(umask) -ne 022 ]]; then
                umask 0022
                echo >&2 -e "\033[01;31mumask: world readable \033[m"
            fi;;
    esac
}
cd . &> /dev/null

for d in ~/GBIF/Workspace ~/Workspace; do
    if [[ -d $d ]]; then
        cdpath=( $d $d/gbif-documents )
        export cdpath
        hash -d Workspace=$d
    fi
done

# For quickly plotting data with gnuplot.  Arguments are files for 'plot "" with lines'.
plot () {
    echo -n '(echo set term png; '
    echo -n 'echo -n plot \"'$1'\" with lines; '
    for i in $*[2,$#@]; echo -n 'echo -n , \"'$i'\" with lines; '
    echo 'echo ) | gnuplot | display png:-'

    (
        echo "set term png"
        echo -n plot \"$1\" with lines
        for i in $*[2,$#@]; echo -n "," \"$i\" "with lines"
        ) | gnuplot | display png:-
}
# Persistant gnuplot (can be resized etc)
plotp () {
    echo -n '(echo -n plot \"'$1'\" with lines; '
    for i in $*[2,$#@]; echo -n 'echo -n , \"'$i'\" with lines; '
    echo 'echo ) | gnuplot -persist'

    (
        echo -n plot \"$1\" with lines
        for i in $*[2,$#@]; echo -n "," \"$i\" "with lines"
        echo
        ) | gnuplot -persist
}
#
scatterplot () {
    echo -n '(echo set term png; '
    echo -n 'echo -n plot \"'$1'\" with points; '
    for i in $*[2,$#@]; echo -n 'echo -n , \"'$i'\" with points; '
    echo 'echo ) | gnuplot | display png:-'

    (
        echo "set term png"
        echo -n plot \"$1\" with points
        for i in $*[2,$#@]; echo -n "," \"$i\" "with points"
        ) | gnuplot | display png:-
}

# CD into random directory in PWD
cdrand () {
    all=( *(/) )
    rand=$(( 1 + $RANDOM % $#all ))
    cd $all[$rand]
}

# up [|N|pat] -- go up 1, N or until basename matches pat many directories
#   just output directory when not used interactively, e.g. in backticks
# 06sep2013  +chris+
# 11oct2017  +leah+  add completion
up() {
    local op=print
    [[ -t 1 ]] && op=cd
    case "$1" in
        '')
            up 1
            ;;
        -*|+*)
            $op ~$1
            ;;
        <->)
            $op $(printf '../%.0s' {1..$1})
            ;;
        *)
            local -a seg; seg=(${(s:/:)PWD%/*})
            local n=${(j:/:)seg[1,(I)$1*]}
            if [[ -n $n ]]; then
                $op /$n
            else
                print -u2 up: could not find prefix $1 in $PWD
                return 1
            fi
    esac
}
_up() { compadd -V segments -- ${(Oas:/:)PWD} }
compdef _up up
alias up=' up'

# Rotate a jpeg, losslessly
#jrotate-r () {
#    for i in $*; do
#        exiftran -9 -b -i $i
#    done
#}

# Calculate the difference in whole days between two dates, ignoring timezone changes
datediff () {
    echo $(( ($(date -u -d $1 +%s) - $(date -u -d $2 +%s)) / 86400))
}

# Close Amarok and shut down
bedtime-awake () {
    sleep ${1}m
    qdbus org.kde.amarok /Player StopAfterCurrent > /dev/null
    t=-10
    while [[ $t -lt 600 ]] && \
        qdbus --literal org.kde.amarok /Player GetStatus > /dev/null && \
        qdbus --literal org.kde.amarok /Player GetStatus | grep -vq 2
    do
        ((t = t+10))
        echo -n "\rWaited" $t "seconds"
        sleep 10;
    done
    echo "\rQuitting"
    qdbus org.kde.amarok / Quit
    qdbus org.ktorrent.ktorrent /MainApplication quit &> /dev/null
}

bedtime () {
    bedtime-awake ${1}
    sudo shutdown -h 1
}

untilquit () {
    while c=$(pgrep -c -x ${1}); do echo -n "\r${c} ${1} processes remaining." && sleep 2; done; echo;
}

untilquitpid () {
    while kill -0 ${1} &> /dev/null; do echo -n "\rProcess with PID ${1} is still running." && sleep 2; done; echo;
}

untilquitmatch () {
    while c=$(pgrep -c -f ${*}); do echo -n "\r${c} ${1} matching processes remaining." && sleep 2; done; echo;
}

# Quote and separate by commas a list of strings.
# Accepts shell arguments then newline-separated arguments on standard input.
quote () {
    echo -n "("
    had_args=
    for arg in $*; do
        if [[ -n $had_args ]]; then
            echo -n ", "
        fi
        echo -n "'$arg'"
        had_args=1
    done

    if [[ -z $had_args ]]; then
        while IFS='\n' read arg; do
            if [[ -n $had_args ]]; then
                echo -n ", "
            fi
            echo -n "'"${${arg## }%% }"'"
            had_args=1
        done
    fi

    echo ")"

    #echo ${(qq)*}
}

# MySQL prompt
export MYSQL_PS1="\R:\m:\s \h.\d> "

# export MAVEN_OPTS="-DdownloadSources=true -DdownloadJavadocs=true $MAVEN_OPTS"

# Build a GBIF AsciiDoctor document
builddoc () {
    doclang=${1:-en}
    docker run --rm -it -e PRIMARY_LANGUAGE=$doclang --user $(id -u):$(id -g) -v $PWD:/documents/ gbif/asciidoctor-toolkit
}

# Print some stuff
date +%c
#if [[ -x `which fortune 2> /dev/null` ]]; then
#    echo
#    fortune -a 2> /dev/null
#fi

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _match
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 0
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '+m:{a-z}={A-Z} r:|[._-]=** r:|=**' '' '' '+m:{a-z}={A-Z} r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 1 numeric
zstyle ':completion:*' substitute 0
zstyle :compinstall filename "$HOME/.zshrc"
# End of lines added by compinstall

# Completers for my own scripts
zstyle ':completion:*:*:(album-cover|copy-geotag):*' file-patterns '*.(#i)(jp*g|png|tif*)'

zstyle ':completion:*:*:photo-sort:*' file-patterns '*(/)'
zstyle ':completion:*:*:photo-sort:*' file-sort time

compdef untilquit=pkill

# Don't complete backup files as commands.
zstyle ':completion:*:complete:-command-::*' ignored-patterns '*\~'

# Username completion.
# Delete old definitions
zstyle -d users
# For SSH and Rsync, use remote users set in SSH configuration, plus root
zstyle ':completion:*:*:(ssh|rsync):*' users root $(awk '$1 == "User" { print $2 }' ~/.ssh/config | sort -u)
# For everything else, use non-system users from /etc/passwd, plus root
zstyle ':completion:*:*:*:*' users root $(awk -F: '$3 > 1000 && $3 < 65000 { print $1 }' /etc/passwd)

# Hostname completion
zstyle ':completion:*' hosts $( grep -h '\.' $HOME/.hosts* )

# URL completion. Use URLs from history.
zstyle -e ':completion:*:*:urls' urls 'reply=( ${${(f)"$(egrep --only-matching \(ftp\|https\?\)://\[A-Za-z0-9\].\* $HISTFILE)"}%%[# ]*} )'

# Quote stuff that looks like URLs automatically.
#autoload -U url-quote-magic
#zstyle ':urlglobber' url-other-schema ftp git gopher http https magnet
#zstyle ':url-quote-magic:*' url-metas '*?[]^(|)~#='
#zle -N self-insert url-quote-magic

# File/directory completion, for cd command
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#lost+found' '(*/)#CVS'
#  and for all commands taking file arguments
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'

# Prevent offering a file (process, etc) that's already in the command line.
zstyle ':completion:*:(rm|cp|kill|diff|scp):*' ignore-line yes
# (Use Alt-Comma to do something like "mv abcd.efg abcd.efg.old")

# Completion selection by menu for kill
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# Filename suffixes to ignore during completion (except after rm command)
# This doesn't seem to work
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~' '*?.old' '*?.pro' '*~'
zstyle ':completion:*:(^rm):*' ignored-patterns '*?.o' '*?.c~' '*?.old' '*?.pro' '*~'
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
# Although this does work
zstyle ':completion:*:emacs:*' ignored-patterns '*.asis' '*~'
zstyle '*' single-ignored show

# Finenames to prefer/limit during completion
zstyle ':completion:*:*:loffice:*' file-patterns '*.(doc|docx|dot|dotx|xls|xlsx|xlt|xltx|odt|ods|csv|tsv|txt):documents *(-/):directories' '%p:all-files'

zstyle ':completion:*:*:rmdir:*' file-sort time

#[[ -d /web/matt.blissett.me.uk]] && zstyle ':completion:*' local matt.blissett.me.uk /web/matt.blissett.me.uk

# CD to never select parent directory
zstyle ':completion:*:cd:*' ignore-parents parent pwd

## Use cache
# Some functions, like _apt and _dpkg, are very slow. You can use a cache in
# order to proxy the list of results (like the list of available debian
# packages)
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Quick ../../.. from https://github.com/blueyed/oh-my-zsh
resolve-alias() {
    # Recursively resolve aliases and echo the command.
    typeset -a cmd
    cmd=(${(z)1})
    while (( ${+aliases[$cmd[1]]} )) \
              && [[ ${aliases[$cmd[1]]} != $cmd ]]; do
        cmd=(${(z)aliases[${cmd[1]}]})
    done
    echo $cmd
}
rationalise-dot() {
    # Auto-expand "..." to "../..", "...." to "../../.." etc.
    # It skips certain commands (git, tig, p4).
    #
    # resolve-alias is defined in a separate function.

    local MATCH # keep the regex match from leaking to the environment.

    # Skip pasted text.
    if (( PENDING > 0 )); then
        zle self-insert
        return
    fi

    if [[ $LBUFFER =~ '(^|/| |	|'$'\n''|\||;|&)\.\.$' ]] \
           && ! [[ $(resolve-alias $LBUFFER) =~ '(git|tig|p4)' ]]; then
        LBUFFER+=/
        zle self-insert
        zle self-insert
    else
        zle self-insert
    fi
}
zle -N rationalise-dot
bindkey . rationalise-dot
bindkey -M isearch . self-insert 2>/dev/null

autoload zsh/sched

# Copys word from earlier in the current command line
# or previous line if it was chosen with ^[. etc
autoload copy-earlier-word
zle -N copy-earlier-word
bindkey '^[,' copy-earlier-word

# Cycle between positions for ambigous completions
autoload cycle-completion-positions
zle -N cycle-completion-positions
bindkey '^[z' cycle-completion-positions

# Increment integer argument
autoload incarg
zle -N incarg
bindkey '^X+' incarg

# Write globbed files into command line
autoload insert-files
zle -N insert-files
bindkey '^Xf' insert-files

# Play tetris
#autoload -U tetris
#zle -N tetris
#bindkey '^X^T' tetris

# xargs but zargs
autoload -U zargs

# Calculator
autoload zcalc

# Line editor
autoload zed

# Renaming with globbing
autoload zmv

# Add Git functions 
if [[ -d ~/.matt-config/zsh-git/functions ]]; then
    fpath=($fpath ~/.matt-config/zsh-git/functions)
    typeset -U fpath
    setopt promptsubst
    autoload -U promptinit
    promptinit
    prompt wunjo
fi
#if [[ -e ~/.matt-config/zsh-git-prompt/zshrc.sh ]]; then
#    source ~/.matt-config/zsh-git-prompt/zshrc.sh
#    RPROMPT='$(git_super_status)'
#fi

# Git completion, retrieved from https://git.kernel.org/cgit/git/git.git/tree/contrib/completion/git-completion.zsh
if [[ -f ~/.matt-config/git-completion.zsh ]]; then
    fpath=(~/.matt-config/git-completion.zsh $fpath)
fi

# PRLL, for parallel shell processing
if [[ -e ~/.matt-config/prll/prll.sh ]]; then
    source ~/.matt-config/prll/prll.sh
fi

# Various reminders of things I forget...
# (Mostly useful features that I forget to use)
# vared
# =ls turns to /bin/ls
# =(ls) turns to filename (which contains output of ls)
# <(ls) turns to named pipe
# ^X* expand word
# ^[^_ copy prev word
# ^[A accept and hold
# echo $name:r not-extension
# echo $name:e extension
# echo $xx:l lowercase
# echo $name:s/foo/bar/

# Quote current line: M-'
# Quote region: M-"

# Up-case-word: M-u
# Down-case-word: M-l
# Capitilise word: M-c

# kill-region

# expand word: ^X*
# accept-and-hold: M-a
# accept-line-and-down-history: ^O
# execute-named-cmd: M-x
# push-line: ^Q
# run-help: M-h
# spelling correction: M-s

# echo ${^~path}/*mous*

# Add host/domain specific zshrc
domainname() {
    setopt extended_glob local_options
    hostname -d 2> /dev/null || echo ${$(hostname -f)#[a-z0-9-]##\.}
}

if [ -f $HOME/.zshrc-$(domainname) ]
then
    . $HOME/.zshrc-$(domainname)
fi

if [ -f $HOME/.zshrc-$HOST ]
then
    . $HOME/.zshrc-$HOST
fi

if [ -f $HOME/.zshrc-$(hostname -f) ]
then
    . $HOME/.zshrc-$(hostname -f)
fi

#####https://habr.com/ru/post/162339/

# Распаковка архивов
# example: extract file
extract () {
 if [ -f $1 ] ; then
 case $1 in
 *.tar.bz2)   tar xjf $1        ;;
 *.tar.gz)    tar xzf $1     ;;
 *.bz2)       bunzip2 $1       ;;
 *.rar)       unrar x $1     ;;
 *.gz)        gunzip $1     ;;
 *.tar)       tar xf $1        ;;
 *.tbz2)      tar xjf $1      ;;
 *.tbz)       tar -xjvf $1    ;;
 *.tgz)       tar xzf $1       ;;
 *.zip)       unzip $1     ;;
 *.Z)         uncompress $1  ;;
 *.7z)        7z x $1    ;;
 *)           echo "I don't know how to extract '$1'..." ;;
 esac
 else
 echo "'$1' is not a valid file"
 fi
}

# Запаковать архив
# example: pk tar file
pk () {
 if [ $1 ] ; then
 case $1 in
 tbz)       tar cjvf $2.tar.bz2 $2      ;;
 tgz)       tar czvf $2.tar.gz  $2       ;;
 tar)      tar cpvf $2.tar  $2       ;;
 bz2)    bzip $2 ;;
 gz)        gzip -c -9 -n $2 > $2.gz ;;
 zip)       zip -r $2.zip $2   ;;
 7z)        7z a $2.7z $2    ;;
 *)         echo "'$1' cannot be packed via pk()" ;;
 esac
 else
 echo "'$1' is not a valid file"
 fi

}   
