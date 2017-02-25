(require 'my-local-vars nil 'noerror)
(setq my-pkg-list '(go-mode go-company helm yaml-mode monokai-theme s elpy helm-gtags web-mode))

(add-hook 'isearch-update-post-hook 'redraw-display)

(provide `my-custom-vars)
