;; -*- lexical-binding: t -*-

(setq inferior-lisp-program "sbcl")
;;(setq inferior-lisp-program "ccl64")
(setq slime-contribs '(slime-fancy))
(slime-setup '(slime-company))
(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "M-.") 'company-show-location)

(add-hook 'slime-repl-mode-hook
          (lambda ()
            ;; (paredit-mode t)
            (company-mode t)
            (rainbow-delimiters-mode t)))

(add-hook 'slime-mode-hook
          (lambda ()
            (paredit-mode t)
            (company-mode t)
            (rainbow-delimiters-mode t)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (paredit-mode t)
            (company-mode t)
            (rainbow-delimiters-mode t)))

(add-hook 'ielm-mode-hook
          (lambda ()
            ;; (paredit-mode t)
            (company-mode t)
            (rainbow-delimiters-mode t)))
