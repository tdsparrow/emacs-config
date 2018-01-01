(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends '(company-anaconda :with company-capf))

(provide 'init-company)

