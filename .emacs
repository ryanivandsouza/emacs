(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(inhibit-startup-buffer-menu nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight bold :height 143 :width normal)))))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(setq my-package-list '(dirtree windata tree-mode ensime yasnippet company sbt-mode scala-mode2 scala-mode2 auto-complete popup popup dash s popup prosjekt dash s sbt-mode scala-mode2 scala-mode2 tree-mode windata yasnippet))
(mapc 'package-install my-package-list)

(autoload 'dirtree "dirtree" "Add directory to tree view" t)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
