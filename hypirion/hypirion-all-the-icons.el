(use-package all-the-icons
  :if (display-graphic-p)) ;; this may cause some ruckus

(use-package all-the-icons-completion
  :if (display-graphic-p)
  :config
  (all-the-icons-completion-mode)
  (add-hook 'marginalia-mode-hook #'all-the-icons-completion-marginalia-setup))

(provide 'hypirion-all-the-icons)
