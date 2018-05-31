(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			     ("melpa" . "http://elpa.emacs-china.org/melpa/")
			     )))

;; cl - Common Lisp Extension
(require 'cl)
;; http://elpa.emacs-china.org/melpa
;;http://www.melpa.org/
;; Add Packages

(defvar my/packages '(
      		      company
				  monokai-theme
				  hungry-delete
				  swiper
				  counsel
				  smartparens
				  easy-hugo
				  use-package
				  ace-window
		      ) "Default packages")

(setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))


;;use-package
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "~/.emacs.d/lisp/")
  (require 'use-package))




(use-package recentf
  :init
  (setq recentf-max-menu-item 25)
  :config
  (recentf-mode 1)
  )



;;(require 'recentf)
;;(recentf-mode 1)
;;(setq recentf-max-menu-item 25)


;;smart-hungry-delete
;;(require 'smart-hungry-delete)
;;(smart-hungry-delete-add-default-hooks)
;;(global-set-key (kbd "<backspace>") 'smart-hungry-delete-backward-char)
;;(global-set-key (kbd "C-d") 'smart-hungry-delete-forward-char)
;;hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)
;;swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)

;;smartparens

(require 'smartparens-config)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)


(use-package easy-hugo
  :init
  (setq easy-hugo-basedir "d:/blog/hugo/")
  (setq easy-hugo-url "http://127.0.0.1:1313")
  (setq easy-hugo-root "d:/blog/hugo/")
  (setq easy-hugo-previewtime "300")
  (setq easy-hugo-default-ext ".org")
   :bind ("C-c C-e" . easy-hugo)
  )

;;hugo
;;(setq easy-hugo-basedir "d:/blog/hugo/")
;;(setq easy-hugo-url "http://127.0.0.1:1313")
;;(setq easy-hugo-root "d:/blog/hugo/")
;;(setq easy-hugo-previewtime "300")
;;(define-key global-map (kbd "C-c C-e") 'easy-hugo)



;;ace-window
;;多窗口切换
(global-set-key (kbd "M-o") 'ace-window)
;; 文件末尾
(provide 'init-packages)


