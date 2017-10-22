(define-key global-map [?¥] [?\\])
(keyboard-translate ?\C-h ?\C-?)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(if window-system (progn
    (set-background-color "Black")
    (set-foreground-color "LightGray")
    (set-cursor-color "Gray")
    (set-frame-parameter nil 'alpha 80) ;透明度
))
(setq scroll-margin 5)
(setq scroll-preserve-screen-position t)
(setq next-screen-context-lines 5)
(setq make-backup-files nil)
(setq auto-save-default nil)
