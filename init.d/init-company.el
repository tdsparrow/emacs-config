(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "M-n") #'company-select-next)
     (define-key company-active-map (kbd "M-p") #'company-select-previous)))

(provide 'init-company)

