;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 更改光标的样式
(setq-default cursor-type 'bar)
;; 关闭启动帮助画面 
(setq inhibit-splash-screen 1)
;;全盘
;;(setq inital-frame-alist (quote ((fullscreen . maximized))))
;;显示当前行
(global-hl-line-mode t)


;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。;;
(setq frame-title-format "emacs@%b")


;;加载皮肤

(load-theme 'monokai t)
;;--------------------------------------显示时间
;;启动删吗显示设置,在minibuffer上面的那个杠上

(display-time-mode 1)
(setq display-time-24hr-format t);;24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置
(setq display-time-interval 10);;时间的变化频率，单位多少来着？

;;--------------------------------------显示时间结束

(provide 'init-ui)


