(use-package go-ts-mode
  :demand t
  :ensure nil
  :after treesit-auto
  ;; ... and lsp-mode implicitly, but ¯\_(ツ)_/¯
  :hook ((go-ts-mode . lsp-deferred)
         (go-ts-mode . hypirion-lsp-keybindings)
         (go-ts-mode . hypirion-lsp-format-and-organize-imports-on-save)
         (go-ts-mode . hypirion-corfu-auto-mode))
  :config
  ;; A list of directories that won't need a file watcher because they
  ;; are static libraries
  (with-eval-after-load 'lsp-mode
    (dolist (env-dir '("GOROOT" "GOPATH"))
      (when-let ((root (getenv env-dir)))
        (add-to-list 'lsp-file-watch-ignored-directories
                     (concat (regexp-quote root) "/")))))
  :custom
  ;; this must be set the same as tab-width (I think..?), which is 2
  (go-ts-mode-indent-offset 2))

(provide 'hypirion-go)
