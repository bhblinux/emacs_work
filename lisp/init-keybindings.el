;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 这个快捷键绑定可以用之后的插件 counsel 代替
 (global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;magit
(global-set-key (kbd "C-x g") 'magit-status)




(provide 'init-keybindings)
