;; 显示行号
(global-linum-mode 1)
;;关闭自动备份
(setq make-backup-files nil)
;;关闭自动恢复
;;(setq auto-save-default nil)
;;屏蔽声音
(setq ring-bell-function 'ignore)

;;开启全局company补全
(global-company-mode 1)

;;括号补全
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


 ;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)



(setq mouse-yank-at-point t)

;;把 fill-column 设为 60. 这样的文字更好读
(setq default-fill-column 120)
(setq default-tab-width 4);;tab键为8个字符宽度


;;字符集
(set-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;;(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
;;(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
;;


;;开启emacs server
(setq server-auth-dir "~/.emacs.d/server/")
(setq server-name "emacs-server-file")
(server-start)

(provide 'init-better-defaults)
