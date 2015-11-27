(require 'prelude-evil)
(evil-mode 1)

;; 定义切换桌面快捷键
(define-key evil-normal-state-map "vs" 'evil-window-vsplit)
(define-key evil-normal-state-map "vh" 'evil-window-left)
(define-key evil-normal-state-map "vl" 'evil-window-right)

;; 为不同的模式设置不通的光标
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("blue" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

;; auto-indent with the return key
;(define-key global-map (kbd "RET") 'newline-and-indent)

;; show machine paren
;(require 'autopair)
;(autopair-global-mode)
