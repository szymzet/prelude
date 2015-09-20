(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; minimalistic mode line
(size-indication-mode -1)
(column-number-mode -1)

(global-hl-line-mode 1)
(global-linum-mode -1)

(setq default-indicate-empty-lines t)

(setq echo-keystrokes 0.02)

(setq-default show-trailing-whitespace t)

(setq initial-major-mode 'text-mode)
(setq initial-scratch-message nil)

(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose t)
(setq delete-by-moving-to-trash t)
(setq create-lockfiles nil) ; annoying .#file-name

(setq-default sentence-end-double-space nil)

(setq confirm-kill-emacs 'y-or-n-p)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq use-dialog-box nil)
(setq visible-bell t)
(setq blink-matching-paren t)

;; mac modifier keys
(setq mac-right-option-modifier nil) ; for Polish characters
(setq mac-command-modifier 'meta)
(setq mac-right-command-modifier 'meta)

;; save system clipboard to kill ring
(setq save-interprogram-paste-before-kill t)

;; midnight.el config (auto killing of old buffers)
(add-to-list 'clean-buffer-list-kill-never-regexps "\\*scratch.*\\*")
(setq my-buffers-to-quickly-clean '("^\\*ag search"
                                    "^\\*Occur\\*"
                                    "^\\*Help\\*"
                                    "^\\*Apropos\\*"
                                    "^\\*Customize.*\\*"))
(dolist (buffer-regexp my-buffers-to-quickly-clean)
  (add-to-list 'clean-buffer-list-kill-regexps buffer-regexp))

;; when popping the mark, continue popping until the cursor actually moves
;; Also, if the last command was a copy - skip past all the expand-region cruft.
(defadvice pop-to-mark-command (around ensure-new-position activate)
  (let ((p (point)))
    (when (eq last-command 'save-region-or-current-line)
      ad-do-it
      ad-do-it
      ad-do-it)
    (dotimes (i 10)
      (when (= p (point)) ad-do-it))))
