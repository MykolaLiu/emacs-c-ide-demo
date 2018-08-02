(menu-bar-mode t)
(tool-bar-mode -1)

;; enable linum mode by default
(global-linum-mode t)

;; enable column-number-mode
(column-number-mode t)

;; main theme
(load-theme 'material t)

;; full screan mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; load nyan mode
(nyan-mode t)


(provide 'setup-appearance)
