(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; Display line numbers for all files
(global-linum-mode 1)

;; Highlight the current line
(global-hl-line-mode 1)

;; Use windows copy/paste keybindings
(cua-mode t)

(require 'color-theme)
(color-theme-initialize)
(load-library "color-theme-crl")
(load-library "color-theme-crl-256")
(set-face-background 'hl-line "#444444")
(color-theme-crl)

;; Use M-<direction> to switch windows
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;; Shortcut for goto-line
(global-set-key (kbd "C-x g") 'goto-line)

;; NO TABS
(setq-default indent-tabs-mode nil)

;; Remove whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Don't indent namespace
(c-set-offset 'innamespace 0)

;; .h Files in C++ mode
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; rust-mode
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; Setup an 80 column guide
(require 'fill-column-indicator)
(add-hook 'c-mode-common-hook 'fci-mode)
(add-hook 'c-mode-common-hook (lambda () (set-fill-column 80)))
(add-hook 'python-mode-hook 'fci-mode)
(add-hook 'python-mode-hook (lambda () (set-fill-column 80)))

;; Turn off scroll bars
(scroll-bar-mode -1)

(show-paren-mode 1)
