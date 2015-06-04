;--------------------------------------
;; My personal .emacs file
;;    * try to cover different evn for linux, macos or win32
;;
;;--------------------------------------


;; =========================
;; Environment determination
;; =========================
;; Running XEmacs ?
(defvar running-xemacs       (string-match "XEmacs" emacs-version))

;; Emacs version
(cond ((string-match ".*macs *23\..*" (emacs-version))
       (setq emacs-major-version 23))
      ((string-match ".*macs *22\..*" (emacs-version))
       (setq emacs-major-version 22))
      ((string-match ".*macs *21\..*" (emacs-version))
       (setq emacs-major-version 21))
      ((string-match ".*macs *20\..*" (emacs-version))
       (setq emacs-major-version 20))
      ((string-match ".*macs *19\..*" (emacs-version))
       (setq emacs-major-version 19))
      )
(if running-xemacs
    ;; don't offer migration of the init file
    (setq load-home-init-file t))


;; Macro to be used later to differenciate code for GNU Emacs, XEmacs or
;; Carbon Emacs
(defmacro GNUEmacs (&rest body)
  "Execute any number of forms if running under GNU Emacs."
  (list 'if (not running-xemacs) (cons 'progn body)))

(defmacro XEmacs (&rest body)
  "Execute any number of forms if running under XEmacs."
  (list 'if running-xemacs (cons 'progn body)))
(defmacro CarbonEmacs (&rest body)
  "Execute any number of forms if running under Mac OS X port Carbon Emacs."
  (list 'if (featurep 'carbon-emacs-package) (cons 'progn body)))
;; To detect Carbon Emacs, use the following:
;; (if (featurep 'carbon-emacs-package)
;;     (progn
;;       (something-to-do)
;;       (something-to-do)
;;       (something-to-do)
;;       ))
(defmacro Aquamacs (&rest body)
  "Execute any number of forms if running under Mac OS X port Aquamacs."
  (list 'if (featurep 'aquamacs) (cons 'progn body)))

;; ---------------------------------
;; For packages not included in ELPA
;;
(setq load-path (cons "~/.emacs.d/emacs-config/init.d/" load-path))
(setq load-path (cons "~/.emacs.d/emacs-config/site-lisp/" load-path))
(setq load-path (cons "~/.emacs.d/auto-install/" load-path))
(setq custom-theme-load-path (cons "~/Sources/emacs-color-theme-solarized" custom-theme-load-path))  

;; Assuming emacs 24
;; Get this from emacs-starter-kit
(require 'package)
(add-to-list 'package-archives
	     '("marmalde" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(require 'auto-install)
(require 'init-packages)
(require 'init-var)
(require 'init-depend)
(require 'init-display)
(require 'init-emodes)


(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)                           

(setq-default indent-tabs-mode nil)
