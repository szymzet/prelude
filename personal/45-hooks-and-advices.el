(add-hook 'prog-mode-hook
          (lambda()
            (highlight-symbol-mode 1)))
(add-hook 'prog-mode-hook
          (lambda()
            (highlight-symbol-nav-mode 1)))

(add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))
