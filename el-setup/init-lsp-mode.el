(require 'lsp-mode)

(add-to-list 'load-path (expand-file-name "clients" (el-get-package-directory 'lsp-mode)))

(add-hook 'js-mode-hook #'lsp 100)

(setq lsp-log-io t)

(require 'js-mode)
(define-key js-mode-map [(meta ?.)] #'xref-find-definitions)

(provide 'init-lsp-mode)
