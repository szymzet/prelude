(prelude-require-packages '(gist
                            highlight-symbol
                            comment-dwim-2
                            yasnippet
                            helm-swoop
                            helm-c-yasnippet
                            helm-ls-git
			    solarized-theme
                            rspec-mode))
(setq aw-dispatch-always t)
(setq aw-dispatch-alist
      '((?x aw-delete-window " Ace - Delete Window")
        (?v split-window-below)
        (?b balance-windows)
        (?s split-window-right)))
(setq aw-keys '(?j ?k ?l ?\; ?f ?d))

;;
;; highlight-symbol
;;
(setq highlight-symbol-idle-delay 30)
(setq highlight-symbol-on-navigation-p 1)

;;
;; scss
;;
(setq scss-compile-at-save nil)

;;
;; flycheck
;;
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(sass scss)))

;;
;; web-mode
;;
(setq web-mode-markup-indent-offset 2)

;;
;; js, javascript
;;
(setq js-indent-level 2)

;;
;; smartparens
;;
(setq smartparens-global-strict-mode nil)
(setq smartparens-strict-mode nil)

;;
;; magit
;;
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

;;
;; company
;;
(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 3)

;;
;; helm
;;
(setq helm-M-x-fuzzy-match nil)
(setq helm-recentf-fuzzy-match nil)
(setq helm-projectile-fuzzy-match nil)
(setq helm-completion-region-fuzzy-match nil)
(setq helm-yas-display-key-on-candidate t)
(setq helm-buffer-max-length nil)
(setq helm-swoop-pre-input-function (lambda () nil))
(setq helm-swoop-speed-or-color nil)
(setq helm-swoop-split-direction 'split-window-horizontally)
(setq helm-ls-git-show-abs-or-relative 'relative)

;;
;; avy jump
;;
(avy-setup-default) ; C-' in isearch mode to jump to specific match

;;
;; projectile
;;
(setq projectile-switch-project-action 'projectile-dired)

;;
;; yasnippets
;;
(yas-global-mode +1)
(setq hippie-expand-try-functions-list (cons 'yas-hippie-try-expand
                                             hippie-expand-try-functions-list))

;;
;; rspec
;;
(setq rspec-use-rake-when-possible nil)

;;
;; diff-hl
;;
(global-diff-hl-mode -1)
