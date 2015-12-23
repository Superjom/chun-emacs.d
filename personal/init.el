; list-package
(require 'package)
  (push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
  (push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)
  (package-initialize)

;; 设置字体
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1)        ; GNU Emacs
(setq font-lock-auto-fontify t))   ; XEmacs

(cond ((equal system-type 'gnu/linux)
       (set-default-font "Monospace-12"))
      ((equal system-type 'darwin)
      (tool-bar-mode -1)
       (set-frame-font "Menlo-12")
       (set-fontset-font
        (frame-parameter nil 'font)
        'han
        (font-spec :family "Hiragino Sans GB" ))))

(set-default-font "DejaVu Sans Mono 10")
(set-fontset-font "fontset-default" 'unicode"WenQuanYi Bitmap Song 12")

;; -------------------------------------------------------------
(load-theme 'leuven t)	;; 设置主题
(setq org-startup-indented t)
(global-linum-mode t)		;; 显示行号
(show-paren-mode 1)		;; 高亮括号
(setq calendar-week-start 1)	;; 显示星期一为每周第一天
(setq truncate-partial-width-windows t) ;; 自动换行

(defun insert-current-date () (interactive)
       (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))

(defun chun-hello () (interactive)
       (insert "hello Superjom!"))


(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2015/bin/x86_64-darwin"))

;(require 'org-latex)


(require 'ox-latex)
;(unless (boundp 'org-latex-classes)
;	(setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass[utf8]{ctexart}"
               ("\\section{%s}" . "\\section*{%s}")))

;(setq org-latex-to-pdf-process
;      '("xelatex -interaction nonstopmode %f"
;        "xelatex -interaction nonstopmode %f"))

(setq org-latex-to-pdf-process
      '("xelatex %f"))


(global-hl-line-mode -1)	; 关闭当前高亮

; 打开 evil 
;(require 'evil)
;(evil-mode 1)
;(evil-mode 1)

; 不产生备份文件
(setq make-backup-files nil)

; 记住文件上次指针的位置
;(setq save-place-file "~/.emacs.d/saveplace")
;(setq-default save-place t)
;(require 'saveplace)

(cond ((equal system-type 'gnu/linux)
       (set-default-font "Monospace-12"))
      ((equal system-type 'darwin)
       (tool-bar-mode -1)
       (set-frame-font "Menlo-12")
       (set-fontset-font
        (frame-parameter nil 'font)
        'han
        (font-spec :family "Hiragino Sans GB" ))))



(load-theme 'light-blue t)	;; 设置主题
(setq org-startup-indented t)
(global-linum-mode t)		;; 显示行号
(show-paren-mode 1)		;; 高亮括号
(setq calendar-week-start 1)	;; 显示星期一为每周第一天
(setq truncate-partial-width-windows t) ;; 自动换行

(defun insert-current-date () (interactive)
       (insert (shell-command-to-string "echo -n $(date +%Y-%m-%d)")))

(defun chun-hello () (interactive)
       (insert "hello Superjom!"))


(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2015/bin/x86_64-darwin"))

;(require 'org-latex)

(require 'ox-latex)
;(unless (boundp 'org-latex-classes)
;	(setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass[utf8]{ctexart}"
               ("\\section{%s}" . "\\section*{%s}")))

;(setq org-latex-to-pdf-process
;      '("xelatex -interaction nonstopmode %f"
;        "xelatex -interaction nonstopmode %f"))

; 缩进
(setq-default indent-tabs-mode nil)
(setq tab-width 4) ; or any other preferred value
;(defvaralias 'c-basic-offset 'tab-width)
;(defvaralias 'cperl-indent-level 'tab-width)

(scroll-bar-mode -1)

; Relative line numbers
;(add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
;(add-hook 'prog-mode-hook 'line-number-mode t)
;(add-hook 'prog-mode-hook 'column-number-mode t)

;;; the following is only needed if you install org-page manually
;;(add-to-list 'load-path "path/to/org-page")
(require 'org-page)
(setq op/repository-directory "~/Onedrive/Documents/blog")
(setq op/site-domain "http://127.0.0.1:8090")
;;; for commenting, you can choose either disqus or duoshuo
(setq op/personal-disqus-shortname "your_disqus_shortname")
(setq op/personal-duoshuo-shortname "your_duoshuo_shortname")
;;; the configuration below are optional
(setq op/personal-google-analytics-id "your_google_analytics_id")

;; 博客
(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("blog-notes"
         :base-directory "~/org/notes"
         :base-extension "org"
         :publishing-directory "~/org/public_html/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t
         :section-numbers nil
         :author "Superjom"
         :email "yanchunwei@outlook.com"
         :auto-sitemap t                ; Generate sitemap.org automagically...
         :sitemap-filename "index.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Index"         ; ... with title 'Sitemap'.
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d %t"
         )

        ("blog-static"
         :base-directory "~/org/notes/static"
         :base-extension "css\\|js\\|png\\|svg\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\img"
         :publishing-directory "~/org/public_html/static"
         :recursive t
         :publishing-function org-publish-attachment
         )
        
        ("blog" :components ("blog-notes" "blog-static"))

))

(require 'ox-beamer)
