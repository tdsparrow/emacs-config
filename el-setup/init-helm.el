(require 'helm-config)

(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-M-x-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(provide 'init-helm)
