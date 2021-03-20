export PATH="/usr/local/opt/gettext/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gb='git branch'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
alias gcp='git cherry-pick'
alias gr='git rebase'
alias gm='git merge'
alias gg='git grep'
alias gl='git log'
alias gst='git stash'

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'

alias ..='cd ..'
alias desktop='cd ~/Desktop'

alias d='docker'
alias n='nvim'
alias t='tmux'
alias zp="open http://localhost:8000 && npx zenn preview"

# 色を使用出来るようにする
autoload -Uz colors
colors
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
# cd なしでもディレクトリ移動
setopt auto_cd
# ビープ音の停止
setopt no_beep
# ビープ音の停止(補完時)
setopt nolistbeep
# cd [TAB] で以前移動したディレクトリを表示
setopt auto_pushd
# 同時に起動した zsh の間でヒストリを共有する
setopt share_history
# 直前と同じコマンドの場合はヒストリに追加しない
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
