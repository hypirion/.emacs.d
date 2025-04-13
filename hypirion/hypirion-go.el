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
  ;; because lsp-mode is lazy loaded, we're left with this
  ;; `with-eval-after-load' fun
  (with-eval-after-load 'lsp-mode
    ;; A list of directories that won't need a file watcher because they
    ;; are static libraries
    (dolist (env-dir '("GOROOT" "GOPATH"))
      (when-let ((root (getenv env-dir)))
        (add-to-list 'lsp-file-watch-ignored-directories
                     (concat (regexp-quote root) "/"))))

    ;; Setup staticcheck for Go code
    (lsp-register-custom-settings
     '(("gopls.staticcheck" t t))))

  :custom
  ;; this must be set the same as tab-width (I think..?), which is 2
  (go-ts-mode-indent-offset 2))

(provide 'hypirion-go)
