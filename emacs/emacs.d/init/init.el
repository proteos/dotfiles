;; init.el
;; initialize all from here

;; package archives
(require 'cl)
(require 'package)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;; init files for my things (everyghing)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))

;; load init files fron ~/.emacs.d/init/ dir
(load "init-appearence.el")
; (load "init-evil.el")
(load "init-completion.el")
(load "init-git.el")
(load "init-keymaps.el")
(load "init-mac-keys.el")
(load "init-yasnippet.el")









; stuff that should be executed the last, after everything else is done
;(add-hook 'after-init-hook '(lambda ()
  ; files that don't depend on externals
;  (load "~/.emacs.d/my-internals.el")
;))
