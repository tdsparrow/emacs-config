(require 'elpy)
(elpy-enable)
(when (executable-find "ipython")
    (elpy-use-ipython))

(provide 'init-elpy)
