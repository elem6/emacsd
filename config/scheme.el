;; -*- lexical-binding: t -*-

(require 'cmuscheme)

(add-hook 'scheme-mode-hook
          (lambda ()
            (rainbow-delimiters-mode t)
            (company-mode t)
            (paredit-mode t)))

(add-hook 'inferior-scheme-mode-hook
          (lambda ()
            (paredit-mode t)
            (company-mode t)
            (rainbow-delimiters-mode t)))

(add-hook 'geiser-repl-mode-hook
          (lambda ()
            ;; (paredit-mode t)
            (company-mode t)
            (rainbow-delimiters-mode t)))

(setq geiser-chez-binary "/usr/local/bin/chez")
(setq geiser-active-implementations '(chez))
