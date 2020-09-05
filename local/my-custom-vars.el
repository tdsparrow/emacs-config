(require 'my-local-vars nil 'noerror)
(setq my-pkg-list '(go-mode helm yaml-mode monokai-theme yasnippet
			    s anaconda-mode py-yapf pyvenv helm-gtags web-mode tide gotest prettier-js
			    company-anaconda py-yapf virtualenvwrapper flycheck-inline flycheck auto-virtualenv lsp-ui))

(add-hook 'isearch-update-post-hook 'redraw-display)

(provide `my-custom-vars)
