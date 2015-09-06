 ;; cycle whitespace
(global-set-key [remap just-one-space] 'cycle-spacing)

;; skip the C-x for window splits
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-below-and-move-there-dammit)
(global-set-key (kbd "C-3") 'split-window-right-and-move-there-dammit)
(global-set-key (kbd "C-0") 'delete-window)
(global-set-key (kbd "M-o") 'other-window)

;; backspace is too far away
(global-set-key (kbd "M-h") 'backward-kill-word)

;; new scratch buffer easily
(global-set-key (kbd "C-c b") 'create-scratch-buffer)

;; join lines (join line below with current)
(global-set-key (kbd "M-j") 'prelude-top-join-line)

;; Move more quickly
(global-set-key (kbd "C-S-n") (lambda () (interactive) (ignore-errors (next-line 5))))
(global-set-key (kbd "C-S-p") (lambda () (interactive) (ignore-errors (previous-line 5))))
(global-set-key (kbd "C-S-f") (lambda () (interactive) (ignore-errors (forward-char 5))))
(global-set-key (kbd "C-S-b") (lambda () (interactive) (ignore-errors (backward-char 5))))

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

;; magit, fullscreen
(global-set-key (kbd "C-x g") 'magit-status-fullscreen)
(autoload 'magit-status-fullscreen "magit")

;; dired
(define-key dired-mode-map (kbd "k") 'dired-do-delete) ; cause it's used in most places
