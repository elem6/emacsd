;; -*- lexical-binding: t -*-

(require 'tex-site)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)
(setq TeX-electric-math '("\\(" . "\\)"))
(setq TeX-quote-after-quote t)
(setq TeX-clean-confirm nil)
(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-method 'synctex)
(setq TeX-engine 'luatex)
(require 'auctex-latexmk)
(auctex-latexmk-setup)
(setq auctex-latexmk-inherit-TeX-PDF-mode t)

(require 'tex-style)
(setq LaTeX-csquotes-close-quote "}")
(setq LaTeX-csquotes-open-quote "\\endquote{")

(add-hook 'LaTeX-mode-hook
          (lambda ()
            (flyspell-mode t)
            (LaTeX-math-mode t)
            (visual-line-mode t)
            (turn-on-reftex t)))

(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
'(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))
