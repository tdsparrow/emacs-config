;;; init-go-mode --- set go mode
;;
;;; Commentary:
;;
;;; Code:


(defun gotest-kbd ()
  "Set gotest kbd."
  (let ((map go-mode-map))
    (define-key map (kbd "C-c a") 'go-test-current-project)
    (define-key map (kbd "C-c m") 'go-test-current-file)
    (define-key map (kbd "C-c .") 'go-test-current-test)
    )
  )

(add-hook 'go-mode-hook 'gotest-kbd)
(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'init-go-mode)

;;; init-gotest ends here
