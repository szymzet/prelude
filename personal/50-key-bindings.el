 ;; cycle whitespace
(global-set-key [remap just-one-space] 'cycle-spacing)

;; skip the C-x for window splits
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-below-and-move-there-dammit)
(global-set-key (kbd "C-3") 'split-window-right-and-move-there-dammit)
(global-set-key (kbd "C-0") 'delete-window)
(global-set-key (kbd "M-o") 'ace-window)

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

;; move by sexp with arrows
(global-set-key (kbd "<left>") 'sp-backward-sexp)
(global-set-key (kbd "<right>") 'sp-forward-sexp)
(global-set-key (kbd "<up>") 'sp-up-sexp)
(global-set-key (kbd "C-<up>") 'sp-backward-up-sexp)
(global-set-key (kbd "<down>") 'sp-down-sexp)
(global-set-key (kbd "C-<down>") 'sp-backward-down-sexp)

;; gist
(global-set-key (kbd "C-c g") 'gist-buffer-private)
(global-set-key (kbd "C-c G") 'gist-list)

;; company
(global-set-key (kbd "C-c TAB") 'company-complete-common)

;; yasnippet
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
;; goto char in line
(global-set-key (kbd "C-j") 'avy-goto-char-in-line)

;; super cool marking
(global-set-key (kbd "M-m") 'easy-mark)

;; rewrap (C-u for wrap) region
(global-set-key (kbd "C-c w") 'sp-rewrap-sexp) ; w == wrap

;;
;; keychords
;;
(key-chord-define-global "3u" 'undo-tree-undo)
(key-chord-define-global "3j" 'avy-goto-char-timer)
(key-chord-define-global "3l" 'avy-goto-line)
(key-chord-define-global "fj" 'avy-goto-char-2)
(key-chord-define-global "3o" 'occur)
(key-chord-define-global "3k" 'kill-buffer)
(key-chord-define-global "9b" 'ido-switch-buffer)
(key-chord-define-global "9s" 'projectile-ag)
(key-chord-define-global "9f" 'projectile-find-file)
(key-chord-define-global "9w" 'save-buffer)
(key-chord-define-global "9r" 'anzu-query-replace-regexp)
(key-chord-define-global "9t" 'delete-trailing-whitespace)

;; magit, fullscreen
(global-set-key (kbd "C-x g") 'magit-status-fullscreen)
(autoload 'magit-status-fullscreen "magit")

;; dired
(define-key dired-mode-map (kbd "k") 'dired-do-delete) ; cause it's used in most places

;; zapping zopping zzzing etc.
(global-set-key (kbd "M-z") 'zzz-to-char) ; simpler than zop, uses avy when multiple occurences
(global-set-key (kbd "M-Z") 'zzz-up-to-char)

