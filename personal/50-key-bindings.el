 ;; cycle whitespace
(global-set-key [remap just-one-space] 'cycle-spacing)

;; skip the C-x for window splits
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-below)
(global-set-key (kbd "C-3") 'split-window-right)
(global-set-key (kbd "C-0") 'delete-window)
(global-set-key (kbd "M-o") 'other-window)

;; ace window
(global-set-key (kbd "C-j") 'ace-window) ; j == wJndow or j == Jump to window

;; gist
(global-set-key (kbd "C-c g") 'gist-buffer-private)
(global-set-key (kbd "C-c G") 'gist-list)

;; company
(global-set-key (kbd "C-c TAB") 'company-complete-common)

;; yasnippet
(global-set-key (kbd "C-c y") 'helm-yas-complete)
(global-set-key (kbd "C-c Y") 'helm-yas-create-snippet-on-region)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map [(tab)] nil)
(define-key yas-minor-mode-map [(control tab)] 'yas-expand)

;; expand region
(global-set-key (kbd "M-2") 'er/expand-region) ; because 2 is just above W, for M-w
(global-unset-key (kbd "C-=")) ; space as ctrl caused a lot of miss triggers for C-= while coding

;; commenting
(global-set-key (kbd "M-;") 'comment-dwim-2)

;; goto line
(global-set-key (kbd "M-g") 'avy-goto-line)

;; super cool marking
(global-set-key (kbd "M-m") 'easy-mark)

;; rewrap (C-u for wrap) region
(global-set-key (kbd "C-c w") 'sp-rewrap-sexp) ; w == wrap

;;
;; keychords
;;
(key-chord-define-global "3j" 'avy-goto-word-or-subword-1)
(key-chord-define-global "fj" 'avy-goto-char-2)
(key-chord-define-global "3o" 'helm-swoop)
(key-chord-define-global "3k" 'kill-buffer)
(key-chord-define-global "9b" 'helm-mini)
(key-chord-define-global "9s" 'helm-do-ag-project-root)
(key-chord-define-global "9f" 'helm-ls-git-ls)
(key-chord-define-global "9w" 'save-buffer)
(key-chord-define-global "9r" 'anzu-query-replace-regexp)
(key-chord-define-global "9t" 'delete-trailing-whitespace)
