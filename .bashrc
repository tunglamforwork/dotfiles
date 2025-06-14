LS_COLORS=$LS_COLORS':di=38;5;43'
LS_COLORS=$LS_COLORS':*.sh=38;5;222'
LS_COLORS=$LS_COLORS':*.bat=38;5;172'

LS_COLORS=$LS_COLORS':*.vimrc=38;5;13'
LS_COLORS=$LS_COLORS':*.viminfo=38;5;13'
LS_COLORS=$LS_COLORS':*.vim=38;5;13'
LS_COLORS=$LS_COLORS':*.gitconfig=38;5;13'
LS_COLORS=$LS_COLORS':*.bashrc=38;5;13'
LS_COLORS=$LS_COLORS':*.bash_profile=38;5;13'
LS_COLORS=$LS_COLORS':*.bash_history=38;5;13'

# Code
LS_COLORS=$LS_COLORS':*.py=38;5;203'
LS_COLORS=$LS_COLORS':*.csv=38;5;156'
LS_COLORS=$LS_COLORS':*.ipynb=38;5;184'
LS_COLORS=$LS_COLORS':*.dart=38;5;51'
LS_COLORS=$LS_COLORS':*.lua=38;5;81'
LS_COLORS=$LS_COLORS':*.cpp=38;5;81'
LS_COLORS=$LS_COLORS':*.go=38;5;81'
LS_COLORS=$LS_COLORS':*.php=38;5;81'
LS_COLORS=$LS_COLORS':*.css=38;5;41'
LS_COLORS=$LS_COLORS':*.html=38;5;178'
LS_COLORS=$LS_COLORS':*.java=38;5;74'
LS_COLORS=$LS_COLORS':*.js=38;5;74'
LS_COLORS=$LS_COLORS':*.ts=38;5;115'
LS_COLORS=$LS_COLORS':*.json=38;5;178'
LS_COLORS=$LS_COLORS':*.xml=38;5;178'
LS_COLORS=$LS_COLORS':*.yaml=38;5;178'
LS_COLORS=$LS_COLORS':*.yml=38;5;178'

# Text
LS_COLORS=$LS_COLORS':*.txt=38;5;253'
LS_COLORS=$LS_COLORS':*.md=38;5;184'

LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

export LS_COLORS

export GCC_COLORS='error=31:warning=35:note=36:caret=32:locus=01:quote=01'

alias cls='clear'
alias ll='TERM=dumb lsd -alF'
alias la='TERM=dumb lsd -A'
alias ls='TERM=dumb lsd --color=auto'
alias cd..='cd ..'
alias home='cd ~'
alias n='vi .'
alias ..='cd ..'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir='mkdir -pv'
alias h='history'
alias j='jobs -l'
alias df='df -h'
alias vi='nvim'
alias g='git'
alias vif='vi `fzf`'
alias f='fzf'
alias reload='source ~/.bashrc'
alias dt='cd ~/OneDrive\ -\ VNU-HCMUS/Desktop/'
alias brc='cd ~ && vi .bashrc'
alias q='exit'
alias rc='g++ *.cpp && ./a.exe'
alias here='explorer .'
alias co="checkout"
alias pos="poetry shell"
alias gps='g ps'
alias gpsf='g ps --force-with-lease'
alias gpl='g pl --rebase'
alias gbr='g br'
alias gl='g llog'
alias gh='g hist'
alias gf='g fetch'
alias gco='g co'
alias gfr='g fetch origin && g rebase origin/develop'
alias gs='g st'
alias gst='g stash'
alias ga='g add'
alias gc='g commit'
alias lg='lazygit'

bind '"\C-f":"cd_with_fzf\n"'
bind '"\C-o":"open_with_fzf\n"'

bind 'set bell-style none'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

. ~/z.sh

open_with_fzf() {
  fzf -m --preview="tree -L 1 {}" --preview-window=:hidden | start $(xargs -ro -d "\n" 2>&-)
}
cd_with_fzf() {
  cd $(find . -type d -print | fzf --preview="tree -L 1 {}" --preview-window=:hidden)
}

export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init bash)"

if [ -z "$SSH_AUTH_SOCK" ]; then
  eval $(ssh-agent -s) >/dev/null 2>&1
  ssh-add ~/.ssh/id_rsa_hugo >/dev/null 2>&1
  ssh-add ~/.ssh/id_rsa >/dev/null 2>&1
fi

if [ $(expr index "$-" i) -eq 0 ]; then
  return
fi

if [ -t 1 ]; then
  exec </dev/tty
fi

export PATH="/c/Users/Admins/AppData/Roaming/Python/Scripts:/d/WORKSPACE/PERSONAL/PROJECTS/zapyai/backend/ai-service:/c/Program Files/MySQL/MySQL Server 8.0/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
