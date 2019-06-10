(require 'my-local-vars nil 'noerror)
(setq my-pkg-list '(go-mode helm yaml-mode monokai-theme yasnippet my-go-company py-yapf
			    s anaconda-mode pyvenv helm-gtags web-mode tide gotest prettier-js
			    company-anaconda virtualenvwrapper flycheck auto-virtualenv))

(add-hook 'isearch-update-post-hook 'redraw-display)

(provide `my-custom-vars)
