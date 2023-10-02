# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="avit"
#ZSH_THEME="bira"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="eastwood"
#ZSH_THEME="simple"
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

# Plugins
plugins=(git fzf zsh-kubectl-prompt sudo zsh-autosuggestions kubectl gcloud zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

# Aliases
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Yauheni_Rykhter/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/Yauheni_Rykhter/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Yauheni_Rykhter/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/Yauheni_Rykhter/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# The next line enables fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
