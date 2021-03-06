﻿
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/lisp")
;;安装包管理
(require 'init-packages)

;;界面配置
(require 'init-ui)
;;默认配置
(require 'init-better-defaults)
;;快捷键配置
(require 'init-keybindings)

(require 'ox-md nil t)







































(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 2)
 '(custom-safe-themes
   (quote
	("c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" default)))
 '(display-time-mode t)
 '(package-selected-packages (quote (company)) t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

;;Set default font
;;(set-default-font "宋体")
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((t (:family #("宋体" 0 2 (charset chinese-gbk)) :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
(put 'upcase-region 'disabled nil)
