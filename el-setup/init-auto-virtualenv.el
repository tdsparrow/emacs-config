(require 'anaconda-mode)
(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)

(setq auto-virtualenv-dir (auto-virtualenv-first-file-exists-p '("~/.venv")))
(add-to-list 'auto-virtualenv-project-root-files ".env")
(add-to-list 'auto-virtualenv-project-root-files ".envrc")


(setq original-anaconda-mode-server-command anaconda-mode-server-command)

(defun split-python-command (a b substr)
  "Split python command to insert code.
A prefix string list.
B postfix string list.
SUBSTR string to find spot."
  (if (null b)
      `(a b)
    (if (string-match-p substr (car b))
	(list (append a (list (car b))) (cdr b))
      (split-python-command (append a (list (car b))) (cdr b) substr)
      )
    )
  )

(defun reload-env-on-find-def ()
    "reload virtualenv on find definition."
    (interactive)
    (when (not (equal auto-virtualenv--path pyvenv-virtual-env))
      (setq auto-virtualenv--path nil)
      (let ((original-code (split-python-command () (split-string original-anaconda-mode-server-command "\n") "__future__"))
	    (new-code (format "import sys\nsys.path.append('%s')" auto-virtualenv--project-root)))
	(setq anaconda-mode-server-command (string-join (apply 'append (car original-code) (list new-code) (cdr original-code)) "\n")
	    )))
    (auto-virtualenv-set-virtualenv)
    (anaconda-mode-find-definitions))

(remove-hook 'python-mode-hook 'reload-env-on-find-def)

(define-key anaconda-mode-map (kbd "M-.") 'reload-env-on-find-def)



(setq auto-virtualenv-verbose t)

(provide 'init-auto-virtualenv)
