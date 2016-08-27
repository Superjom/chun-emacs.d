;; -*- mode: dotspacemacs -*-
;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     git
     python
     chinese
     c-c++
     cscope
     ycmd
     latex
     (latex :variables latex-build-command "xelatex")
     (latex :variables latex-enable-auto-fill t)
     ;; markdown
     org
     html
     themes-megapack
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     (shell :variables
            shell-default-term-shell "/bin/zsh"
            shell-default-height 30
            shell-default-position 'bottom)
     ;;spell-checking
     syntax-checking
     osx
     ;;protobuf
     ;; rss reader
     ;;elfeed
     ;;elfeed-org
     org-octopress-config
     ;;unicad-config
     ;;themes-megapack
     ;; version-control

     ;; file manager
     ;;ranger

     gtags
     ;;smex
     ;;(ranger :variables ranger-show-preview t)

     ;;w3m
   )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ;; graphviz-dot-mode
                                      ;;sr-speedbar
                                      protobuf-mode
                                      google-c-style
                                      elpy
                                      switch-window
                                      ;; sublimity
                                      ;; tabbar-ruler
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         lush
                         spacemacs-dark
                         solarized-dark
                         dichromacy
                         monokai
                         zenburn
                         monokai
                         leuven
                         spacemacs-light
                         solarized-light
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers 'prog-mode
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   )) ;; end of whole config

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; auto-completion config
  auto-completion-return-key-behavior nil
  auto-completion-complete-with-key-sequence t
  (setq-default dotspacemacs-configuration-layers
                '((auto-completion :variables
                                   auto-completion-enable-sort-by-usage t
                                   )))
  (setq-default dotspacemacs-configuration-layers
                '((auto-completion :variables
                                   auto-completion-enable-help-tooltip)))

  (spacemacs//set-monospaced-font   "Source Code Pro" "Hiragino Sans GB" 13 12)

  ;; aganda config
  (setq org-agenda-files (quote ("~/orgnotes/agenda")))

  (setq org-todo-keywords
        (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
                (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))
  (require 'org)
  (setq org-todo-keyword-faces
        '(("TODO" . (:foreground "red" :weight bold))
          ("NEXT" . (:foreground "blue" :weight bold))
          ("DONE" . (:foreground "forest green" :weight bold))
          ("WAITING" . (:foreground "orange" :weight bold))
          ("HOLD" . (:foreground "magenta" :weight bold))
          ("CANCELLED" . (:foreground "forest green" :weight bold))))
  (setq org-use-fast-todo-selection t)
  (setq org-treat-S-cursor-todo-selection-as-state-change nil)

  ;; agenda config
  (setq org-agenda-dim-blocked-tasks nil)
  (setq org-agenda-compact-blocks t)

  ;; capture config
  (setq org-directory "~/orgnotes")
  (setq org-default-notes-file "~/orgnotes/refile.org")
  (setq org-capture-templates
        '(("t" "todo" entry (file "~/orgnotes/refile.org")
           "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
          ("n" "note" entry (file "~/orgnotes/refile.org")
           "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
          ("p" "Phone Call" entry (file "~/orgnotes/refile.org")
           "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
          ("h" "Habit" entry (file "~/orgnotes/refile.org")
           "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n")))

  ;; latex config
  (add-hook 'doc-view-minor-mode-hook 'auto-revert-mode)
  latex-enable-auto-fill t
  latex-enable-folding t
  latex-build-command "xelatex"

  ;; c-c++ config
  c-c++-default-mode-for-headers 'c++-mode
  c-c++-enable-clang-support t

  ;; treat _ as part of a word
  (add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (add-hook 'c++-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))

  ;; white space
  ;(require 'whitespace)
  ;(setq whitespace-style '(face empty tabs lines-tail trailling))
  ;(global-whitespace-mode t)
  ;(require 'column-marker)
  ;(add-hook 'python-mode-hook (lambda() (interactive) (column-marker-1 80)))
  ;; https://www.emacswiki.org/emacs/FillColumnIndicator
  (require 'fill-column-indicator)
  (setq fci-rule-width 2)
  (setq fci-rule-color "orange")
  (add-hook 'python-mode-hook 'fci-mode)
  (add-hook 'c++-mode-hook 'fci-mode)
  (add-hook 'c-mode-hook 'fci-mode)

  ;;(defun fci-mode-override-advice (&rest args))
  ;;(advice-add 'org-html-fontify-code :around
              ;;(lambda (fun &rest args)
               ;; (advice-add 'fci-mode :override #'fci-mode-override-advice)
                ;;(let ((result  (apply fun args)))
                 ;; (advice-remove 'fci-mode #'fci-mode-override-advice)
                  ;;result)))

  ;; window split control
  (define-key evil-normal-state-map "vs" 'split-window-right-and-focus)
  (define-key evil-normal-state-map "vt" 'split-window-below-and-focus)
  (define-key evil-normal-state-map "vh" 'evil-window-left)
  (define-key evil-normal-state-map "vl" 'evil-window-right)
  (define-key evil-normal-state-map "vk" 'evil-window-top)
  (define-key evil-normal-state-map "vj" 'evil-window-bottom)

  ;; tab
  ;; https://www.emacswiki.org/emacs/Evil#toc9

  ;; magit
  git-magit-status-fullscreen t

  ;; refile
  (setq org-refile-targets
        '(("~/orgnotes/agenda/work.org" :maxlevel . 3)
          ("~/orgnotes/agenda/life.org" :maxlevel . 3)))

  ;; c++
  (add-hook 'c++-mode-hook
            (lambda ()
              (setq company-clang-arguments '("-std=c++11"))
              (setq flycheck-clang-language-standard "c++11")
              (setq flycheck-gcc-language-standard "c++11")
              ))

  (setq-default dotspacemacs-configuration-layers
                '((syntax-checking :variables syntax-checking-enable-tooltips nil)))
  (setq-default dotspacemacs-configuration-layers
                '((syntax-checking :variables syntax-checking-enable-by-default nil)))

  ;; magit config
  git-magit-status-fullscreen t

  ;; flycheck config
  (add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
  (add-hook 'c++-mode-hook
            (lambda () (setq flycheck-clang-include-path
                             (list (expand-file-name "/usr/local/include")
                                   (expand-file-name "~/project/cHasky")
                                   (expand-file-name "~/project/cHasky/thirdparty/local/include")))))
  ;; shell config
  (setq-default dotspacemacs-configuration-layers
                '(shell :variables shell-default-shell 'multi-term))
  ;; shutdown flycheck by default
  (setq-default dotspacemacs-configuration-layers
                '((syntax-checking :variables syntax-checking-enable-by-default nil)))

  ;; elfeed config
  ;;(elfeed :variables rmh-elfeed-org-files
          ;;(list "~/.emacs.d/private/elfeed.org"))
  (setq rmh-elfeed-org-files (list "~/.emacs.d/private/elfeed.org"))

  ;; disable auto-save
  (setq dotspacemacs-auto-save-file-location nil)

  ;; auto insert code
  (defun org-insert-src-block (src-code-type)
    "Insert a `SRC-CODE-TYPE' type source code block in org-mode."
    (interactive
     (let ((src-code-types
            '("emacs-lisp" "python" "C" "sh" "java" "js" "clojure" "C++" "css"
              "calc" "asymptote" "dot" "gnuplot" "ledger" "lilypond" "mscgen"
              "octave" "oz" "plantuml" "R" "sass" "screen" "sql" "awk" "ditaa"
              "haskell" "latex" "lisp" "matlab" "ocaml" "org" "perl" "ruby"
              "scheme" "sqlite")))
       (list (ido-completing-read "Source code type: " src-code-types))))
    (progn
      (newline-and-indent)
      (insert (format "#+BEGIN_SRC %s\n" src-code-type))
      (newline-and-indent)
      (insert "#+END_SRC\n")
      (previous-line 2)
      (org-edit-src-code)))
  (add-hook 'org-mode-hook '(lambda ()
                              ;; keybiding for insert source code
                              (local-set-key (kbd "C-c s")
                                             'org-insert-src-block)))
  ;; add support for exectuate c++ in org-mode
  (org-babel-do-load-languages
   'org-babel-load-languages '((C . t)))

  ;; add config for clang-format
  ;; Bind clang-format-region to C-M-tab in all modes:
  (global-set-key [C-M-tab] 'clang-format-region)
  ;; Bind clang-format-buffer to tab on the c++-mode only:
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))

  ;; support dot-mode
  (use-package graphviz-dot-mode :defer t)

  ;; (add-hook 'c++-mode-hook '(lambda ()
  ;;                             (progn
  ;;                               (require 'sr-speedbar)
  ;;                               (evil-leader/set-key "sr" 'sr-speedbar-toggle)
  ;;                               (message "set sr-speedbar key binding"))))

  ;; ycmd configs
  (set-variable 'ycmd-server-command '("python" "/Users/baidu/Packages/ycmd/ycmd"))
  (set-variable 'ycmd-global-config "/Users/baidu/.emacs.d/layers/+tools/ycmd/global_conf.py")
  ;(set-variable 'ycmd-extra-conf-handler "load")
  (set-variable 'ycmd-extra-conf-whitelist '("~/project/cHasky/.ycm_extra_conf.py"
                                             "~/Nodes/gtmlib/.ycm_extra_conf.py"
                                             "~/Nodes/paddle/.ycm_extra_conf.py"
                                             ))
  (add-hook 'c-mode-hook 'ycmd-mode)
  ;;(add-hook 'python-mode-hook 'ycmd-mode)
  ;; (require 'ycmd-eldoc)
  ;; (add-hook 'ycmd-mode-hook 'ycmd-eldoc-setup)

  git-magit-status-fullscreen t
  ;; don't work, that's weried
  ;;chinese-enable-youdao-dict t
  ;; support gogle c style
  ;; (add-hook 'c++-mode-hook 'google-set-c-style)
  ;; (add-hook 'c-mode-hook 'google-set-c-style)

  ;; support org export markdown 
  ;;(eval-after-load "org"
    ;;'(require 'ox-md nil t))

  ;; full screen at startup
  ;;(custom-set-variables
   ;;'(initial-frame-alist (quote ((fullscreen . maximized)))))
  (set-frame-parameter nil 'fullscreen 'fullboth)

  (defun insert-date ()
      "insert date by shell output"
    (interactive)
    (insert (shell-command-to-string "date")))

  (defun rsync-push ()
      "push local file to remote server by using rsync-workflow"
    (interactive)
    (progn
      (shell-command "rsync_push.py")
      ;; sleep for a while; just display shell output
      (sit-for 2)
      (kill-buffer "*Shell Command Output*")
      ))

  ;; enable unicad
  ;; the unicad package should be downloaded and placed in load-path.
  (push "/Users/baidu/.emacs.d/private" load-path)
  (require 'unicad)

  ;; set key-binding for helm-semantic
  (spacemacs/set-leader-keys "sm" 'helm-semantic)
  (setq helm-semantic-fuzzy-match t)
  (setq helm-imenu-fuzzy-match t)
  (setq helm-locate-fuzzy-match t)

  ;; for python code format
  ;; too slow!
  ;; (add-hook 'python-mode-hook 'elpy-enable)

  (spacemacs/set-leader-keys "ru" 'rsync-push)

  (setq org-latex-to-pdf-process '("xelatex %f"))

  (require 'ox-latex)
  (add-to-list 'org-latex-classes
               '("beamer"
                 "\\documentclass\{beamer\}\n"
                 ("\\section\{%s\}" . "\\section*\{%s\}")
                 ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
                 ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))


  ;; switch-window
  (spacemacs/set-leader-keys "oo" 'switch-window)

  ;; change theme automatically
  ;; TODO refactor this
  (require 'helm-themes)
  (setq chun/theme-mode "init-theme")
  (defun chun--change-theme-by-file ()
    (interactive)
    (let ((code-theme "tangotango")
          (text-theme "brin")
          (my-buffer-name (buffer-name)))
      (if (or (string-match "\\.org" my-buffer-name)
              (string-match "\\.txt" my-buffer-name))
          ;; load text mode
          (if (not (string-equal chun/theme-mode "text-theme"))
              (progn
                (message "load text theme")
                ;; (message (format "last mode is %s" chun/theme-mode))
                (helm-themes--load-theme text-theme)
                (setq chun/theme-mode "text-theme")
                )
            )
        (if (not (string-equal chun/theme-mode "code-theme"))
            (progn
              (message "load code theme")
              (helm-themes--load-theme code-theme)
              (setq chun/theme-mode "code-theme")
              )
          )
        )
      )
    )

  ;; (add-hook 'find-file-hook 'chun--change-theme-by-file)
  ;; (add-hook 'c++-mode-hook 'chun--change-theme-by-file)
  ;; (add-hook 'org-mode-hook 'chun--change-theme-by-file)
  (spacemacs|define-custom-layout "shell"
    :binding "+"
    :body
    (shell)
    )

  ;; (require 'sublimity)

) ;; end of custom-config


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset (quote set-from-style))
 '(flycheck-clang-include-path
   (quote
    ("/usr/local/include" "/Users/baidu/project/cHasky" "/Users/baidu/project/cHasky/thirdparty/local/include" "/Users/baidu/project/cHasky/chasky"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
