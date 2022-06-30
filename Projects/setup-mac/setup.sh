# フォルダを英語表記にする
rm ~/*/.localized
sudo rm /*/.localized
# Finderで不可視ファイルを見れるようにする
defaults write com.apple.finder AppleShowAllFiles TRUE
# Finderをフルパス表示にする
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true
# Finderを再起動する
killall Finder
# スクリーンショットをダウンロードに保存するようにする
defaults write com.apple.screencapture location ~/Downloads/
# スクリーンショットの影を消す
defaults write com.apple.screencapture disable-shadow -boolean true

# Install Homebrew
# 最初にパスワードが必要。30分くらい。
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew -v

# Set up git
brew install git
git --version
git config --global user.name "murs313"
git config --global user.email "murbook313@gmail.com"

# Set configuraion file
git clone https://github.com/murs313/setup-mac.git ~
source ~/.zshrc

# brew install
brew install --cask karabiner-elements
brew install --cask evernote
brew install --cask google-chrome
brew install --cask slack
brew install --cask discord
brew install --cask itsycal
brew install --cask visual-studio-code
brew install --cask tableplus
brew install --cask toggl-track
brew install --cask clipy
brew install --cask appcleaner

# 遊び
brew install --cask streamlabs-obs
brew install --cask steam

# 仕事
brew install --cask 1password
brew install direnv
brew install rbenv

# Backend
brew install --cask docker
brew install --cask postman
brew install jq
brew install wget

# Frontend
brew install npm

# Android
brew install --cask android-studio
