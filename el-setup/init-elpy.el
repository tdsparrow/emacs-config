(require 'elpy)
(elpy-enable)
(when (executable-find "ipython")
  (elpy-use-ipython))

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "--simple-prompt -i")

(provide 'init-elpy)
