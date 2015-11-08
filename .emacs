;; =========================
;; Environment determination
;; =========================
;; Running XEmacs ?

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

(add-to-list 'load-path "~/.emacs.d/init.d")
(require (intern (concat "init-" (number-to-string emacs-major-version))))
