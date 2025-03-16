(use-package clojure-mode
  :after paredit
  :hook ((clojure-mode . paredit-mode)
         (clojurec-mode . paredit-mode)
         (clojurescript-mode . paredit-mode)
         (clojurex-mode . paredit-mode))
  :custom
  (clojure-indent-style 'align-arguments))

(provide 'hypirion-clj)
