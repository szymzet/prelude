(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(global-hl-line-mode 1)
(global-linum-mode 1)

(setq echo-keystrokes 0.02)

(setq-default show-trailing-whitespace t)

(setq initial-major-mode 'text-mode)
(setq initial-scratch-message nil)

(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose t)
(setq delete-by-moving-to-trash t)
(setq create-lockfiles nil) ; annoying .#file-namer

(setq-default sentence-end-double-space nil)

(setq confirm-kill-emacs 'y-or-n-p)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq use-dialog-box nil)
(setq visible-bell t)
(setq blink-matching-paren t)

(setq display-time-24hr-format t)
(setq display-time-day-and-date nil)
(display-time)
