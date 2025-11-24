(use-package clojure-mode
  :after paredit
  :hook ((clojure-mode . paredit-mode)
         (clojurec-mode . paredit-mode)
         (clojurescript-mode . paredit-mode))
  :custom
  (clojure-indent-style 'align-arguments))

(use-package cider
  :custom
  ;; Disable CIDER's eldoc to avoid conflict with lsp-mode
  ;; lsp-mode will provide hover documentation instead
  (cider-eldoc-display-for-symbol-at-point nil))

;; clojure-lsp integration notes:
;; - clojure-lsp support is built into lsp-mode (no separate package needed)
;; - Install the language server: M-x lsp-install-server RET clojure-lsp
;; - LSP and CIDER run together; CIDER handles completion (see hypirion-lsp.el)
;; - See: https://emacs-lsp.github.io/lsp-mode/tutorials/clojure-guide/

(provide 'hypirion-clj)
