(dolist (hook (list
               'c-mode-hook
               'emacs-lisp-mode-hook
               'haskell-mode-hook
               'sh-mode-hook
               'makefile-gmake-mode-hook
               ))
  (add-hook hook (lambda () (ggtags-mode))))

(provide 'init-ggtags)
