(use-package treesit-auto
  :custom
  (treesit-auto-install nil)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode) ;; TODO this doesn't seem to work..?
  :custom
  ;; See https://github.com/renzmann/treesit-auto/issues/139 for
  ;; workaround related to ABI 15 not compatible yet
  (treesit-language-source-alist
   '((bash . ("https://github.com/tree-sitter/tree-sitter-bash" "v0.23.3" nil nil nil))
     (go . ("https://github.com/tree-sitter/tree-sitter-go" "v0.23.4" nil nil nil))
     (gomod . ("https://github.com/camdencheek/tree-sitter-go-mod" "v1.0.2" nil nil nil))
     (python . ("https://github.com/tree-sitter/tree-sitter-python" "v0.23.6" nil nil nil)))))

(provide 'hypirion-treesit-auto)
