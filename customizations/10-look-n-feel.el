;; Visuals

;; Font and screen size

(add-to-list 'initial-frame-alist '(font . "Inconsolata-dz-13"))
(add-to-list 'initial-frame-alist '(width . 160))
(add-to-list 'initial-frame-alist '(height . 100))

(add-to-list 'default-frame-alist '(font . "Inconsolata-dz-13"))
(add-to-list 'default-frame-alist '(width . 160))
(add-to-list 'default-frame-alist '(height . 100))


;; Hide menu bar
(menu-bar-mode -1)

;; Hide tool bar
(tool-bar-mode -1)

;; Show matching parens
(show-paren-mode t)

;; Use ido-mode
(require 'ido)
(ido-mode t)

