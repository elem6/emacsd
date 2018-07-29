;; -*- lexical-binding: t -*-
;; UI stuff( font, frame size)
(setq default-frame-alist '(
                (width . 110)
                (height . 45)))

;; (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
;; (add-to-list 'default-frame-alist '(ns-appearance . dark))

(if (eq system-type 'darwin)
    (progn 
      (set-face-attribute 'default nil
                          :family "Menlo" :height 160 :weight 'medium))
   (progn 
   (set-default-font "Dejavu Sans Mono-12")
   (add-to-list 'default-frame-alist '(font . "Dejavu Sans Mono-12"))
   ))

(setq-default line-spacing 4)

(set-frame-parameter (selected-frame) 'alpha '(90 90))
(add-to-list 'default-frame-alist '(alpha 95 95))

;; Add color to a shell running in emacs 'M-x shell'
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq frame-title-format 
      (concat "%b - Emacs@" system-name))
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)
(pixel-scroll-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(if (display-graphic-p)
    (menu-bar-mode 1)
  (menu-bar-mode -1))

;;(load-theme 'atom-one-dark t)
