(require 'ensime)

(elpy-enable)

(autoload 'scala-mode "scala-mode" "Scala Mode." t)
(add-to-list 'auto-mode-alist '("\\.scala\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("scala" . python-mode))

(provide 'setup-scala)
