PREZTO_DIR="$HOME/.zprezto"
if [[ ! -d $PREZTO_DIR ]]
then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
else
  cd ${PREZTO_DIR}
  git pull
  cd
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export LSCOLORS=Gxfxcxdxcxegedabagacad

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -lG'
alias la='ls -aG'
alias ls='ls -G'

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
