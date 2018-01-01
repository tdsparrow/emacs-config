(require 'my-local-vars nil 'noerror)
(setq my-pkg-list '(go-mode go-company helm yaml-mode monokai-theme yasnippet
			    s anaconda-mode pyvenv helm-gtags web-mode tide
			    company-anaconda virtualenvwrapper flycheck))

(add-hook 'isearch-update-post-hook 'redraw-display)

(provide `my-custom-vars)
