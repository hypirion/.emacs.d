(use-package embark
  :bind (:map minibuffer-local-map
              ("C-c C-e" . embark-export)))

(use-package embark-consult
  :after embark)

(provide 'hypirion-embark)
