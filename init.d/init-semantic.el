;;; init-semantic.el --- Configuration for semantic 

;; Filename: init-semantic.el
;; Description: Configuration for auto-complete mode
;; Author: tdsparrow sqallowlee@gmail.com
;; Copyright (C) 2008, 2009, tdsparrow, all rights reserved.
;; Created: 
;; Version: 0.1
;; URL:
;; Keywords: ide 
;; Compatibility: GNU Emacs 23.0.60.1
;;
;; Features that might be required by this library:
;;    semantic
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Configuration for semantic
;;


;;; ### Semantic ###
;;; --- 代码分析， 智能补全

(dolist (hook (list
               'c-mode-hook
               'c++-mode-hook
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               ))
  (add-hook hook 'semantic-mode))

(add-hook 'semantic-init-hooks 'semantic-idle-completions-mode) ;空闲时进行补全分析
(setq semanticdb-project-roots (list (expand-file-name "/")))   ;配置Semantic的检索范围
(autoload 'senator-try-expand-semantic "senator")               ;优先调用了senator的分析结果
(global-semantic-idle-summary-mode)


(provide 'init-semantic)


