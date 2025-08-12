(use-package treesit-auto
  :custom
  (treesit-auto-install nil)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode)) ;; TODO this doesn't seem to work..?

(provide 'hypirion-treesit-auto)
