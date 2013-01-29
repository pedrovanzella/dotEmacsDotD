(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Package list
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby starter-kit-eshell zenburn-theme markdown-mode markdown-mode+ color-theme) "Package list to be autoinstalled.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

