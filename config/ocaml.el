;; -*- lexical-binding: t -*-

(add-to-list 'load-path "~/.opam/system/share/emacs/site-lisp/")
(load "~/.opam/system/share/emacs/site-lisp/tuareg-site-file")
;; Add opam emacs directory to the load-path
(setq opam-share (substring
                  (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
;; Load merlin-mode
(require 'merlin)
;; Start merlin on ocaml files
(add-hook 'tuareg-mode-hook 'merlin-mode t)
(add-hook 'caml-mode-hook 'merlin-mode t)
;; Enable auto-complete
(setq merlin-use-auto-complete-mode 'easy)
;; Use opam switch to lookup ocamlmerlin binary
(setq merlin-command 'opam)

;; Use the opam installed utop
(setq utop-command "opam config exec -- utop -emacs")
(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
(add-hook 'tuareg-mode-hook 'utop-minor-mode)
(add-hook 'tuareg-mode-hook 'company-mode)
(add-hook 'utop-mode-hook 'company-mode)
(add-hook 'utop-minor-mode-hook 'company-mode)
