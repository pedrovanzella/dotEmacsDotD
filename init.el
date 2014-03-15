;; CASK
(require 'cask "~/.cask/cask.el")

(cask-initialize)

;; Set up path

(add-to-list 'exec-path '("/usr/local/bin"))

;; Load configuration from custom dir
(mapc 'load (directory-files "~/.emacs.d/customizations" t "^[0-9]+.*\.el$"))
