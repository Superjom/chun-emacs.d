(setq org-octopress-config-packages
    '(
      org-octopress
      orglue
      emacs-ctable
      ))

(defun org-octopress-config/init-org-octopress ()
  (use-package org-octopress
    :init
    (progn
      (setq org-octopress-directory-top       "~/project/octopress/source")
      (setq org-octopress-directory-posts     "~/project/octopress/source/_posts")
      (setq org-octopress-directory-org-top   "~/project/octopress/source")
      (setq org-octopress-directory-org-posts "~/project/octopress/source/blog")
      (setq org-octopress-setup-file          "~/org/setupfile.org")

      (defun org-octopress-config/org-octopress-publish()
        (interactive)
        (org-octopress-setup-publish-project)
        (org-publish-project "octopress" t)
        )

      (evil-leader/set-key "op" 'org-octopress-config/org-octopress-publish)

      ;; init org-publish
      (require 'ox-publish)
      (setq org-publish-project-alist
            '(
              ("blog-static"
               :base-directory "/Users/baidu/project/octopress/source/blog/images/blog"
               :base-extension "css\\|js\\|png\\|svg\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\img"
               :publishing-directory "/Users/baidu/project/octopress/_deploy/images/blog"
               :recursive t
               :publishing-function org-publish-attachment
               )
              ))
      )
    )
  )
