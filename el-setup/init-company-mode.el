(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends '(company-anaconda :with company-capf))

(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

(provide 'init-company)

