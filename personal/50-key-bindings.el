;; regexp by default
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; cycle whitespace
(global-set-key [remap just-one-space] 'cycle-spacing)

;; new scratch buffer easily
(global-set-key (kbd "C-c b") 'create-scratch-buffer)

;; join lines (join line below with current)
(global-set-key (kbd "M-j") 'prelude-top-join-line)


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
(global-set-key (kbd "M-e") 'er/expand-region) ; e == expand, and it's close to M-w for yanking
(global-unset-key (kbd "C-=")) ; space as ctrl caused a lot of miss triggers for C-= while coding

;; commenting
(global-set-key (kbd "M-;") 'comment-dwim-2)

;; goto line
(global-set-key (kbd "M-g") 'avy-goto-line)

;; avy timed
(global-set-key (kbd "C-c J") 'avy-goto-char-timer)

;; super cool marking
(global-set-key (kbd "M-m") 'easy-mark)

(global-set-key (kbd "C-c w") 'ace-window) ; w == window

;;
;; keychords
;;
(key-chord-define-global "3u" 'revert-buffer) ; u == bUffer
(key-chord-define-global "3j" 'avy-goto-char-timer) ; j == jump
(key-chord-define-global "3o" 'helm-swoop) ; o == occur == swOOp
(key-chord-define-global "3k" 'kill-buffer)
(key-chord-define-global "9b" 'helm-mini)
(key-chord-define-global "9s" (lambda () ; force using regexp by passing C-u programatically
                                (interactive)
                                (let ((current-prefix-arg '(4)))
                                  (call-interactively 'projectile-ag))))
(key-chord-define-global "9f" 'projectile-find-file)
(key-chord-define-global "9w" 'save-buffer)
(key-chord-define-global "9r" 'anzu-query-replace-regexp)
(key-chord-define-global "9t" 'delete-trailing-whitespace)


(define-key dired-mode-map (kbd "k") 'dired-do-delete) ; cause it's used in most places
