(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar elpa-packages '(starter-kit starter-kit-lisp starter-kit-bindings mldonkey haskell-mode
                                    starter-kit-ruby starter-kit-js cursor-chg auto-complete company
                                    markdown-mode scala-mode yaml-mode color-theme flymake-ruby 
                                    tabbar highlight-parentheses window-number elpy zenburn-theme fit-frame
                                    anything anything-config anything-match-plugin anything-obsolete anything-complete
                                    yasnippet )
  "A list of packages to ensure are installed at launch.")

(defvar emacswiki-packages '(fullscreen irfc scroll-mode-line-mode))

(dolist (p elpa-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(dolist (p emacswiki-packages)
  (when (not (require p nil 'noerror))
    (auto-install-download (concat auto-install-emacswiki-base-url (symbol-name p) ".el"))))

(provide 'init-packages)
