;; load elpa packages

(load "~/.emacs.d/config/ui.el")
(load "~/.emacs.d/config/edit.el")
(setq package-archives '(
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
                         ))
(package-initialize)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;ido mode
(require 'ido)
(ido-mode t)
(ido-everywhere 1)

(load "~/.emacs.d/config/ocaml.el")
(load "~/.emacs.d/config/scheme.el")
(load "~/.emacs.d/config/lisp.el")
(load "~/.emacs.d/config/avy.el")
(load "~/.emacs.d/config/latex.el")

;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (add-hook 'web-mode 'company-mode)

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'objc-mode-hook 'company-mode)

;; Open .v files with Proof General's Coq mode
(load "~/.emacs.d/lisp/PG/generic/proof-site")

(setq ispell-program-name "/usr/local/bin/aspell")

(load "server")
(unless (server-running-p) (server-start))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6a23db7bccf6288fd7c80475dc35804c73f9c9769ad527306d2e0eada1f8b466" default)))
 '(package-selected-packages
   (quote
    (merlin validate utop slime-company rainbow-delimiters paredit magit idris-mode geiser flycheck-haskell f avy-zap auctex-latexmk))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
