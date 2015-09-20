(prelude-require-packages '(gist
                            ag
                            highlight-symbol
                            comment-dwim-2
                            yasnippet
			    solarized-theme
                            rspec-mode))


;;
;; ace-window
;;
(setq aw-dispatch-alist '((?x aw-delete-window " Ace - Delete Window")
                          (?v split-window-below)
                          (?b balance-windows)
                          (?s split-window-right)))
(setq aw-keys '(?j ?k ?l ?\; ?f ?d))

;;
;; ag
;;
(setq ag-highlight-search t)

;;
;; ido
;;
(when (package-installed-p 'ido-vertical-mode)
  (progn
    (setq ido-vertical-show-count t)
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-and-C-p-only)))

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
(set-default 'magit-unstage-all-confirm nil)
(set-default 'magit-stage-all-confirm nil)

;;
;; company
;;
(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 3)

;;
;; avy jump
;;
(global-set-key (kbd "C-;") 'avy-goto-word-1)
(global-set-key (kbd "C-:") 'avy-goto-char)
                                        ; go to an isearch match using avy
(with-eval-after-load "isearch"
  (define-key isearch-mode-map (kbd "C-;") 'avy-isearch))

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
