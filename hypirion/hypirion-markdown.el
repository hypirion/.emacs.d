(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command '("pandoc" "--from=markdown" "--to=html5"))
  :bind (:map markdown-mode-map
         ("C-c C-e" . markdown-do)))

(provide 'hypirion-markdown)
