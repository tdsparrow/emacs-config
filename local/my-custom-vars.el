(require 'my-local-vars nil 'noerror)
(setq my-pkg-list '(go-mode helm yaml-mode monokai-theme elpy helm-gtags web-mode))

(add-hook 'isearch-update-post-hook 'redraw-display)

(provide `my-custom-vars)
