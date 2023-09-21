#!/bin/bash

cat << START
==================================
DOTFILES SETUP START!!
==================================
START

# Brewfileのインストール実行
brew bundle

# 実行スクリプトのディレクトリを取得
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# .から始まる2文字以上のファイルを列挙
for f in .??*; do
	[ "$f" = ".git" -o "$f" = ".gitignore" ] && continue

	ln -sf $SCRIPT_DIR/$f ~/$f
	echo "linked $f"
done

# sheldonの設定ファイル配置
mkdir -p $HOME/.config/sheldon
ln -sf ./sheldon/plugins.toml $HOME/.config/sheldon/plugins.toml

cat << END
==================================
DOTFILES SETUP FINISHED!!
==================================
END
