(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t)
  :mode "\\.rs\\'")

;; rustup component add rust-analyzer

(provide 'hypirion-rust)
