(prelude-require-packages '(gist
                            highlight-symbol
                            comment-dwim-2
                            yasnippet
                            helm-swoop
                            helm-c-yasnippet
			    solarized-theme
                            rspec-mode))
;;
;; ace-window
;;
(setq aw-dispatch-always t)
(setq aw-dispatch-alist
      '((?x aw-delete-window " Ace - Delete Window")
        ;; (?q delete-window)
        ;; (?w aw-swap-window " Ace - Swap Window")
        ;; (?n aw-flip-window)
        (?v split-window-below)
        ;; (?_ aw-split-window-vert "Ace - Split Window Horizontally")
        (?s split-window-right)
        ;; (?| aw-split-window-horz "Ace - Split Window Vertically")
        ;; (?m delete-other-windows)
        ;; (?b balance-windows)
        ))
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
(setq sp-base-key-bindings nil)

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
(setq helm-M-x-fuzzy-match t)
(setq helm-recentf-fuzzy-match t)
(setq helm-projectile-fuzzy-match t)
(setq helm-completion-region-fuzzy-match t)
(setq helm-yas-display-key-on-candidate t)
(setq helm-buffer-max-length nil)
(setq helm-swoop-pre-input-function (lambda () nil))
(setq helm-swoop-speed-or-color t)
(setq helm-swoop-split-direction 'split-window-horizontally)

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
