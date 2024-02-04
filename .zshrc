# 補完機能を有効にする
autoload -Uz compinit && compinit
# 小文字でも大文字ディレクトリ、ファイルを補完できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# コマンドのスペルをミスして実行したときに候補を表示する
setopt correct
# historyから補完する
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# 同時に起動しているzshの間でhistoryを共有する
setopt share_history
# historyに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# interactive modeでもハッシュ(#)をコメントとして扱う
setopt interactivecomments

# プロンプトの設定
PROMPT='%F{cyan}%D{%Y/%m/%d} %* %~%f %% '

# PATHの設定
export PATH=$PATH:$HOME/.pub-cache/bin

export JAVA_HOME=/Applications/'Android Studio.app'/Contents/jbr/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

# asdfの設定
. /usr/local/opt/asdf/libexec/asdf.sh
