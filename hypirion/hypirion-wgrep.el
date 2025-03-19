(use-package wgrep
  :bind (:map wgrep-mode-map
              ("s-s" . wgrep-finish-edit))
  :custom
  (wgrep-auto-save-buffer t))


(provide 'hypirion-wgrep)
