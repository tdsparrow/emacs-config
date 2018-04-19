(require 'auto-virtualenv)
(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)

(setq auto-virtualenv-dir (auto-virtualenv-first-file-exists-p '("~/.venv")))
(add-to-list 'auto-virtualenv-project-root-files ".env")


(defun reload-env-on-find-def ()
    "reload virtualenv on find definition."
    (interactive)
    (when (not (equal auto-virtualenv--path pyvenv-virtual-env))
      (setq auto-virtualenv--path nil))
    (auto-virtualenv-set-virtualenv)
    (anaconda-mode-find-definitions))

(remove-hook 'python-mode-hook 'reload-env-on-find-def)

(define-key anaconda-mode-map (kbd "M-.") 'reload-env-on-find-def)

(setq auto-virtualenv-verbose t)

(provide 'init-auto-virtualenv)
