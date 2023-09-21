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
	[ "$f" = ".git" ] && continue

	ln -sf $SCRIPT_DIR/$f ~/$f
	echo "linked $f"
done


cat << END
==================================
DOTFILES SETUP FINISHED!!
==================================
END
