;; キーの設定
(define-key global-map [?¥] [?\\])
(keyboard-translate ?\C-h ?\C-?)

;; スタートアップの設定
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; バックアップファイルの設定
(setq make-backup-files nil)
(setq auto-save-default nil)

;; マウスの設定
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

;; appearanceの設定
(if window-system (progn
    (set-background-color "Black")
    (set-foreground-color "LightGray")
    (set-cursor-color "Gray")
    (set-frame-parameter nil 'alpha 80) ;透明度
    ))

;; スクロールの設定
(custom-set-variables
 '(scroll-conservatively 1000)
 '(scroll-margin 3)
 )

;; シンボリックリンクを開く時に確認しない設定
(setq vc-follow-symlinks t)
