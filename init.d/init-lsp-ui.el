;;; init-lsp.el --- summary -*- lexical-binding: t -*-

;; Author: tdsparrow
;; Maintainer: tdsparrow
;; Version: version
;; Package-Requires: (dependencies)
;; Homepage: homepage
;; Keywords: keywords


;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; commentary

;;; Code:

(require 'lsp-ui)
(add-hook 'before-save-hook #'lsp-format-buffer t t)
(add-hook 'before-save-hook #'lsp-organize-imports t t)
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;;; init-lsp.el ends here
(provide 'init-lsp-ui)
