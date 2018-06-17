(require 'elpy)

(elpy-enable)
;; Fixing a key binding bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
;; Fixing another key binding bug in iedit mode
(define-key global-map (kbd "C-c o") 'iedit-mode)
;; Use tabs ident by default
(add-hook 'python-mode-hook
	(lambda ()
		(setq indent-tabs-mode t)
		(setq py-indent-tabs-mode t)
		(setq tab-width 4)
		(setq python-indent-offset tab-width)
	(add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(provide 'setup-python)
