(require 'lsp-mode)
(require 'lsp-ui)

(add-to-list 'load-path (expand-file-name "clients" (el-get-package-directory 'lsp-mode)))

(add-hook 'js-mode-hook #'lsp 100)

(setq lsp-log-io t)
(setq lsp-ui-sideline-show-hover t)

(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

(define-key js-mode-map [(meta ?.)] #'xref-find-definitions)

(provide 'init-lsp-mode)
