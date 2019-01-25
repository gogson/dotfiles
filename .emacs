(fset 'yes-or-no-p 'y-or-n-p)

(set-face-attribute 'default (selected-frame) :height 95)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(canlock-password "0a1d592c5be35bb32b73562365e6b2e2ae0ba569")
 '(column-number-mode t)
 '(display-time-mode t)
 '(global-font-lock-mode t)
 '(global-hl-line-mode t)
 '(inhibit-splash-screen t)
 '(iswitchb-mode t)
 ;;'(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(setq indent-tabs-mode t)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(visible-bell t))

;;;;;;;;;;;;;;;;;;;;;;
;; Faces and colors ;;
;;;;;;;;;;;;;;;;;;;;;;

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#dddddd" :background "black" :weight light))))
 '(cursor ((t (:background "chartreuse"))))
 '(font-lock-builtin-face ((t (:foreground "cornflower blue"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "red"))))
 '(font-lock-comment-face ((t (:foreground "#888888" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "green"))))
 '(font-lock-function-name-face ((default (:foreground "cyan"))))
 '(font-lock-keyword-face ((t (:foreground "orangered1" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "lawn green"))))
 '(font-lock-string-face ((t (:foreground "chocolate3"))))
 '(font-lock-type-face ((t (:foreground "deep pink"))))
 '(font-lock-variable-name-face ((default (:foreground "purple" :weight bold)))\
				)
 '(font-lock-warning-face ((t (:foreground "yellow" :underline "red"))))
 '(highlight ((t (:background "gray20" :height 1.0 :weight bold))))
 '(mode-line ((default (:foreground "white" :background "#444444"))))
 '(mode-line-inactive ((default (:foreground "#AAAAAA" :background "#222222")))\
		      )
 '(mouse ((t (:background "white"))))
 '(vertical-border ((t (:foreground "white")))))
;;;;;;;;;;;;;;;;;;;;;;
;; Shortcuts        ;;
;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "M-p") 'clipboard-yank)
(global-set-key [(control tab)] 'other-window)
(global-set-key (kbd "C-.") 'delete-trailing-whitespace)

;;;;;;;;;;;;;;;;;;;;;
;; Fonky           ;;
;;;;;;;;;;;;;;;;;;;;;

(when (require 'ido nil t)
  (ido-mode t))

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)

(setq vc-follow-symlinks t)

;; EOF