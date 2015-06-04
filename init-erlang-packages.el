(require 'package)
(add-to-list 'package-archives
             '("marmalde" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("elpa" . "http://elpa.gnu.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar elpa-packages '(erlang cursor-chg auto-complete company
                               markdown-mode  color-theme helm
                               tabbar highlight-parentheses window-number
                               zenburn-theme fit-frame anything winpoint yasnippet tempbuf ctypes)
  "A list of packages to ensure are installed at launch.")

(defvar emacswiki-packages '() )

(dolist (p elpa-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(dolist (p emacswiki-packages)
  (when (not (require p nil 'noerror))
    (auto-install-download (concat auto-install-emacswiki-base-url (symbol-name p) ".el"))))

(provide 'init-erlang-packages)
