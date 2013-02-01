;; PACKAGE SOURCES
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Refresh package sources
(when (not package-archive-contents)
  (package-refresh-contents))

;; PACKAGE LIST
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby starter-kit-eshell zenburn-theme markdown-mode markdown-mode+ color-theme yaml-mode) "Package list to be autoinstalled.")

;; Install packages from package list
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; MODE SPECIFIC

;; markdown-mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))

;; yaml-mode
(autoload 'yaml-mode "yaml-mode"
  "Major mode for editing YAML files" t)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; shell-script-mode
(add-to-list 'auto-mode-alist '("\\.zsh$" . shell-script-mode))

;; c-mode
(setq c-default-style "k&r"
      c-basic-offset 4)

;; scheme-mode
(require 'xscheme)

;; THEME SPECIFIC

;; zenburn
(load-theme 'zenburn t)
