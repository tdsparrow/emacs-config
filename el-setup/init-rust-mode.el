(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(setq rust-format-on-save t)

(provide 'init-rust-mode)
