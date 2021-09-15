# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

export TERM="xterm-256color"
export VIMINIT='let $MYVIMRC="~/.config/.vimrc" | source $MYVIMRC'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eduardo/.zshrc'

#  autoload -Uz compinit
compinit
plugins=( 
    zsh-autosuggestions
    git
    colored-man-pages
)
# End of lines added by compinstall

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# asdf config
. $HOME/.asdf/asdf.sh

# config
setopt auto_cd

autoload -U colors && colors
autoload -U compinit
zstyle ':completion:*' menu select



# alias
alias ls='ls -lah --color=auto'
alias grep='grep --color'
alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'
alias g='git'

neofetch
