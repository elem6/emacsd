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

