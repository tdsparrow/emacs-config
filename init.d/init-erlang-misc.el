(add-hook 'erlang-mode-hook
          '(lambda ()
             ;; when starting an Erlang shell in Emacs, the node name
             ;; by default should be "emacs"
             (setq inferior-erlang-machine-options '("-sname" "emacs"))))


(provide 'init-erlang-misc)

