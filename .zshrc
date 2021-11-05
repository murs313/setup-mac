# コマンドライン実行時にもハッシュ(#)をコメントとして扱う
setopt interactivecomments

# 補完機能を有効にする
autoload -Uz compinit && compinit

# 小文字でも大文字ディレクトリ、ファイルを補完できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# プロンプトの設定
PROMPT='%F{cyan}%D{%Y/%m/%d} %*%f %% '
