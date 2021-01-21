(require 'my-local-vars nil 'noerror)
(setq my-pkg-list '(go-mode helm yaml-mode monokai-theme yasnippet py-yapf php-mode-improved quelpa cucumber
			    s anaconda-mode pyvenv helm-gtags web-mode tide gotest prettier-js lsp-mode indium
			    company-anaconda virtualenvwrapper flycheck-inline flycheck auto-virtualenv lsp-ui
				doom-modeline))

(add-hook 'isearch-update-post-hook 'redraw-display)

(provide `my-custom-vars)
