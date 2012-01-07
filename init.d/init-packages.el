(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings
                                  starter-kit-ruby starter-kit-js
                                  markdown-mode scala-mode yaml-mode color-theme
                                  tabbar highlight-parentheses window-number
								  anything anything-config anything-match-plugin anything-obsolete anything-complete
								  yasnippet )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
