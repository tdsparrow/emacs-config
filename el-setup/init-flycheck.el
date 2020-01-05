(global-flycheck-mode)

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook #'flycheck-inline-mode))
(provide 'init-flycheck)
