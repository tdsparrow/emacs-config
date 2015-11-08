(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (when (stringp (getenv "https_proxy"))
    (let ((proxy (replace-regexp-in-string "^http[s]://" ""
					   (getenv "https_proxy"))))
      (setq url-proxy-services `(("https" . ,proxy)))))
  (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
      (goto-char (point-max))
      (eval-print-last-sexp)))

(setq el-get-user-package-directory "~/.emacs.d/el-setup")

(provide 'init-elget)
