(require 'python-mode)

;; Autocomplete
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; Use iPython
(setq py-shell-name "ipython")
(setq py-switch-buffers-on-execute-p t)
(setq py-split-windows-on-execute-p t)
