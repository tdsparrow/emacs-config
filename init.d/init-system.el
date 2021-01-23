(global-linum-mode 1)
(setq linum-format "%d ")

(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "~/go/bin")
(setq-default tab-width 4)

(tool-bar-mode -1)
(menu-bar-mode -1)

(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))
(provide 'init-system)


