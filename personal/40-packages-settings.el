(prelude-require-packages '(gist
                            ag
                            highlight-symbol
                            comment-dwim-2
                            yasnippet
			    solarized-theme ; themes need to be installed by hand on first installation
                            monokai-theme
                            rspec-mode
			    helm-swoop
                            beacon
                            hydra))

(auto-dim-other-buffers-mode -1)
(setq company-dabbrev-downcase nil)

;; I'm not into spellchecking all the time
(setq prelude-flyspell nil)

;;
;; ace-window
;;
(setq aw-dispatch-alist '((?x aw-delete-window " Ace - Delete Window")
                          (?v split-window-below)
                          (?b balance-windows)
                          (?s split-window-right)))
(setq aw-keys '(?j ?k ?l ?\; ?f ?d))
(ace-window-display-mode 1)

;;
;; ag
;;
(setq ag-highlight-search t)
(setq ag-reuse-window t)

;;
;; ido
;;
;; (when (package-installed-p 'ido-vertical-mode)
;;   (progn
;;     (setq ido-vertical-show-count t)
;;     (ido-vertical-mode 1)
;;     (setq ido-vertical-define-keys 'C-n-and-C-p-only)))

;;
;; beacon
;;
(setq beacon-blink-duration 0.3)
(setq beacon-blink-delay 0.15)
(beacon-mode 1)

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

(with-eval-after-load "isearch"
  (define-key isearch-mode-map (kbd "M-s j") 'avy-isearch))
(setq avy-case-fold-search nil)

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

;;
;; helm
;;
(setq helm-swoop-pre-input-function (lambda () ()))


;;
;; faces
;;
(set-face-foreground 'auto-dim-other-buffers-face "#75715E")
(set-face-background 'auto-dim-other-buffers-face "#171A0B")
(when (equal prelude-theme 'solarized-light)
  (custom-set-faces
   ;; solarized-light specific settings might be commented out
   ;; '(flx-highlight-face ((t (:foreground "#268bd2" :underline t :weight bold))))
   ;; '(sp-show-pair-match-face ((t (:underline t))))
   ;; '(aw-leading-char-face ((t (:inverse-video t :bold t :height 1.3))))
   ;; '(mode-line ((t (:underline nil))))
   '(mode-line-inactive ((t (:underline nil))))))
