;;; init-my-go-company --- my-go-company initialization
;;
;;; Commentary:
;;

(require 'company-go)

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(provide 'init-my-go-company)
