(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(ansi-term-color-vector [unspecified "#000000" "#d54e53" "#afd75f" "#e7c547" "#5f87d7" "#af87d7" "#5f87d7" "#dadada"])
 '(custom-enabled-themes (quote (tomorrow-night-paradise)))
 '(custom-safe-themes (quote ("96d22c5b839a7088ca1c982b7517c7ecf8018a184be594b0f4fdc4e7dd8faae7" "0ec1d50ee7c886bd065aacff1a6a5034a32357c89a07561fd14f64dfcbf0cf6d" "4aafea32abe07a9658d20aadcae066e9c7a53f8e3dfbd18d8fa0b26c24f9082c" default)))
 '(fci-rule-character-color "#1c1c1c")
 '(fci-rule-color "#1c1c1c")
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 

 ;; My key bindings
(global-set-key (kbd "C-p") 'comment-region)

(setq-default cursor-type 'bar)
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1) 

;; Hide splash-screen and startup-message
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(load-file "~/.emacs.d/flatland-black-theme-source-code.el")
(load-file "~/.emacs.d/sr-speedbar.el")
(setq sr-speedbar-width 10)
(require 'sr-speedbar)
;; (setq sr-speedbar-auto-refresh nil)
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(setq sr-speedbar-right-side nil)
(sr-speedbar-open)
