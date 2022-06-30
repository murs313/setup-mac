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

# Set up git
brew install git
git config --global user.name "murs313"
git config --global user.email "murbook313@gmail.com"

# Clone repo
git clone https://github.com/murs313/setup-mac.git ~/Git/setup-mac

# zsh
cp -r ~/Projects/setup-mac/.zshrc ~/.zshrc
source ~/.zshrc

# karabiner
brew install --cask karabiner-elements
cp -r ~/Git/setup-mac/karabiner ~/.config

# essentials
brew install --cask evernote
brew install --cask google-chrome
brew install --cask itsycal
brew install --cask clipy
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask discord
brew install --cask toggl-track

# Android
brew install --cask android-studio
brew install android-platform-tools
brew install scrcpy

# Backend
brew install --cask docker
brew install --cask datagrip
brew install --cask tableplus
brew install --cask postman
brew install jq
brew install wget
