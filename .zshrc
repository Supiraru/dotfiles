# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Created by newuser for 5.8
alias dotfiles="/usr/bin/git --git-dir $HOME/.dotfiles/ --work-tree=$HOME"
eval "$(fnm env)"
alias mon2cam="deno run --unstable -A -r -q https://raw.githubusercontent.com/ShayBox/Mon2Cam/master/src/mod.ts"
alias xampp="sudo /opt/lampp/lampp start"
alias xampp_stop="sudo /opt/lampp/lampp stop"
alias xampp_mysql="sudo /opt/lampp/bin/mysql -u supiraru -p"
alias xampp_restart="sudo /opt/lampp/lampp restart"
alias xamppcontrolpanel="sudo /opt/lampp/manager-linux-x64.run"
alias cls="clear"
alias py="python"
alias off="systemctl poweroff"


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node \
    marlonrichert/zsh-autocomplete

### End of Zinit's installer chunk

zstyle ':autocomplete:*' max-lines 20%
zstyle ':autocomplete:*' min-input 2
zstyle ':completion:*' verbose no



#Composer Export
export PATH=$PATH:~/.config/composer/vendor/bin:$PATH
fpath=($fpath "/home/supiraru/.zfunctions")


eval "$(starship init zsh)"

export PATH=/home/supiraru/.cargo/bin:$PATH

#flutter
export PATH=$PATH:~/Data/development/flutter/bin
export CHROME_EXECUTABLE=/usr/bin/firefox

#SDK Android
export ANDROID_HOME=$HOME/Data/development/android_sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/build-tools/
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/tools/bin

#jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
