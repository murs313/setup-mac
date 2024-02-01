#!/bin/zsh

# フォルダを英語表記にする
rm ~/*/.localized
# sudo必要か不明
# sudo rm /*/.localized
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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Set up git
brew install git
git config --global user.name "murs313"
git config --global user.email "38303031+murs313@users.noreply.github.com"
git config --global init.defaultBranch main

# Clone repo
git clone https://github.com/murs313/setup-mac.git ~/Git/setup-mac

# zsh
rm ~/.zshrc
ln -s ~/Git/setup-mac/.zshrc ~/.zshrc
source ~/.zshrc

# karabiner
brew install --cask karabiner-elements
# karabinerを起動
rm ~/.config/karabiner/karabiner.json
ln -s ~/Git/setup-mac/.config/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
rm ~/.config/karabiner/assets
ln -s ~/Git/setup-mac/.config/karabiner/assets ~/.config/karabiner/

# essentials
brew install --cask google-chrome
brew install --cask itsycal
brew install --cask clipy
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask discord
brew install --cask toggl-track
brew install --cask appcleaner
brew install --cask zsa-wally

# Backend
brew install --cask docker
brew install --cask tableplus
brew install --cask postman
brew install jq
brew install wget

# Web
brew install npm

# Android
brew install --cask android-studio
brew install scrcpy

# Flutter
brew install --cask flutter

# 遊び
brew install --cask obs
brew install --cask soundflower
brew install --cask steam
brew install --cask wine-crossover
