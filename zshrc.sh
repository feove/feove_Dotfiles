# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- use powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

#Python
export PATH=$PATH:/home/feove/.local/bin

#Dotnet
export PATH=$PATH:/usr/local/share/dotnet


#Zig

export PATH="$HOME/opt/zig/0.14:$PATH"
#export PATH="$HOME/opt/zig/0.13:$PATH"

# Initialize the prompt and settings for Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Enable important plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Source the Oh My Zsh configuration
source $ZSH/oh-my-zsh.sh

# Terminal configuration (aliases and commands)
alias nano=micro
alias c="clear"
alias reload="source ~/.zshrc"
alias config="nano ~/.zshrc"
alias kittyconf="nano ~/.config/kitty/kitty.conf"
# Basic directory navigation
alias doc="cd ~/Documents && clear && ls"
alias dwl="cd ~/Downloads && clear && ls"
alias proj="cd ~/Documents/Projects && clear && ls"
alias spe="cd ~/Documents/School/ && clear && ls"
alias pics="cd ~/Pictures/ && clear && ls"
alias laco="systemctl restart NetworkManager && reboot"

alias open=eog
#Tools
alias shut="shutdown now"

# Useful aliases for file listing
alias ll="exa -l --icons --git"   # A more detailed `ll` with icons and git info
alias l="exa -l --icons"           # `l` to list files with icons (short version)
alias tree="exa -T --icons"        # `tree` command with icons (requires exa to support tree)

# For syntax highlighting in `cat`
alias cat="pygmentize -g"          # For displaying files with syntax highlighting

# To clear the terminal screen
alias c="clear"

# Useful navigation aliases
alias doc="cd ~/Documents"       # Go directly to the Documents directory

# Custom shortcuts for git status
alias gs="git status"              # Short for `git status`
alias gl="git log --oneline --graph"  # Short log view for git
alias gcm="git commit -m"
alias gtag="git tag -ma"
alias gp="git push"

# Enable syntax highlighting and auto-suggestions in Zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Ensure syntax highlighting works correctly for files
alias py="python3"                # Short alias for python3
alias pip="pip3"                  # Short alias for pip3

# For viewing detailed system information (optional)
alias sysinfo="neofetch"          # Use neofetch to show system info

# Use `exa` for modern `ls` functionality
alias ls="exa --icons --git"       # Make `ls` use `exa` by default with icons

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


function check_b {
  if [[ "$BUFFER" =~ ^[b]+$ ]]; then
    b_count=${#BUFFER}

    BUFFER="cd $(printf '../'%.0s {1..$b_count})"
    zle accept-line 
  else
 
    zle accept-line  
  fi
}

zle -N check_b

bindkey "^M" check_b
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/lib64/dotnet
export PATH=$PATH:/usr/share/dotnet
