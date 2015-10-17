;; init.elの読み込み（環境個別の設定はこちらに）
(load "~/.emacs.d/init.el")

;; 日本語環境の設定
(set-language-environment "Japanese")
;; オープニングメッセージの非表示
(setq inhibit-startup-message t)
;; 対応する括弧をハイライト
(show-paren-mode 1)
;; カーソル位置の行数を表示
(column-number-mode 1)
;; メニューバーを非表示
(tool-bar-mode 0)
;; カーソルの点滅を止める
(blink-cursor-mode 0)
