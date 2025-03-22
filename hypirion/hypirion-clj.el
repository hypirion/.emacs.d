(use-package clojure-mode
  :after paredit
  :hook ((clojure-mode . paredit-mode)
         (clojurec-mode . paredit-mode)
         (clojurescript-mode . paredit-mode)
         (clojurex-mode . paredit-mode))
  :custom
  (clojure-indent-style 'align-arguments))

(use-package cider)

;; TODO: something wonky happens when using cider and lsp-mode, and
;; https://andreyor.st/posts/2023-09-09-migrating-from-lsp-mode-to-eglot/
;; has some stuff there... however, Elpaca can't find the lsp-clojure
;; mode, which means I'll have to dig into it when I work with a
;; Clojure project on this new setup

(provide 'hypirion-clj)
