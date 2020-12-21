(require 'my-local-vars nil 'noerror)
(setq my-pkg-list '(go-mode helm yaml-mode monokai-theme yasnippet py-yapf php-mode-improved quelpa cucumber
			    s anaconda-mode pyvenv helm-gtags web-mode tide gotest prettier-js lsp-mode
			    company-anaconda virtualenvwrapper flycheck auto-virtualenv))

(add-hook 'isearch-update-post-hook 'redraw-display)

(provide `my-custom-vars)
