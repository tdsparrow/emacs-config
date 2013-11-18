(defvar my-default-download-directory "~/Downloads/")
(setq mldonkey-host "192.168.10.2")                                  ;主机, 本地
(setq mldonkey-port 4000)                                            ;端口, 用于telnet

(setq exec-path '( "/usr/local/bin"
                   "/usr/bin"
                   "/bin"
                   ))
(setenv "PATH"
        (concat
         "/usr/local/bin" ":"
         "/usr/bin" ":"
         "/bin" ":"
         "/usr/sbin" ":"
         "/sbin"
         ))

(setenv "SBCL_HOME"
        "/usr/lib64/sbcl")

(setq auto-install-use-wget nil)                                    ;auto-install禁用wget
(load "init-var-local.el" t)                                        ;加载本地变量

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")                   ;default browser

(setq auto-install-save-confirm nil)
(setq auto-install-install-confirm nil)

(provide 'init-var)
