;;; init-gotest --- set gotest
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
(provide 'init-gotest)

;;; init-gotest ends here
