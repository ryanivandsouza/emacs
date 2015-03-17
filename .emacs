(prefer-coding-system 'utf-8)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(package-refresh-contents)
(setq my-package-list 
	'(dirtree 
	  windata 
	  tree-mode 
	  ensime 
	  yasnippet 
	  company 
	  sbt-mode 
	  scala-mode2 
	  auto-complete 
	  popup 
	  dash 
	  s 
	  popup 
	  prosjekt 
	  dash 
	  sbt-mode 
	  tree-mode 
	  windata 
	  yasnippet
	  ace-jump-mode
	  jabber
	  monokai-theme
	  mew
	  nyan-mode))
(mapc 'package-install my-package-list)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" default)))
 '(inhibit-startup-buffer-menu nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(load-theme 'monokai t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight bold :height 143 :width normal)))))

(autoload 'dirtree "dirtree" "Add directory to tree view" t)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(require 'jabber)
(setq jabber-account-list '(("ryand@citiusim.mumbai1.corp.citiustech.com"
			     (:network-server . "citiusim.mumbai1.corp.citiustech.com")
			     (:port . 5222))))

(ido-mode t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-visual-line-mode 1)
