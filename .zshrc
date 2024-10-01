# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="avit"
#ZSH_THEME="bira"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="eastwood"
#ZSH_THEME="simple"
#ZSH_THEME="pure"
ZSH_THEME="spaceship"

# Use nvim as default editor for Git
git config --global core.editor nvim

# Plugins
plugins=(git sudo zsh-kubectl-prompt kubectl gcloud zsh-autosuggestions zsh-syntax-highlighting you-should-use zsh-bat)

source $ZSH/oh-my-zsh.sh

# User configuration

alias ll="colorls -la"
alias tf="terraform"

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'; fi
