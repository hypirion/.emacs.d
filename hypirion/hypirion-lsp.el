(use-package lsp-mode
  :hook ((lsp-mode . lsp-diagnostics-mode)
         (lsp-mode . lsp-completion-mode-maybe))

  :preface
  (defun lsp-completion-mode-maybe ()
    (unless (bound-and-true-p cider-mode)
      (lsp-completion-mode 1)))

  :custom
  ;; just copied from
  ;; https://andreyor.st/posts/2023-09-09-migrating-from-lsp-mode-to-eglot/

  (lsp-session-file (expand-file-name ".lsp-session" user-emacs-directory))
  (lsp-idle-delay 0.5)

  ;; core
  (lsp-enable-xref t)
  (lsp-auto-configure nil)
  (lsp-eldoc-enable-hover nil)
  (lsp-enable-dap-auto-configure nil)
  (lsp-enable-file-watchers nil)
  (lsp-enable-folding nil)
  (lsp-enable-imenu nil)
  (lsp-enable-indentation nil)
  (lsp-enable-links nil)
  (lsp-enable-on-type-formatting nil)
  (lsp-enable-suggest-server-download nil)
  (lsp-enable-symbol-highlighting nil)
  (lsp-enable-text-document-color nil)
  ;; completion
  (lsp-completion-enable t)
  (lsp-completion-enable-additional-text-edit nil)
  (lsp-enable-snippet nil)
  (lsp-completion-show-kind nil)
  ;; headerline
  (lsp-headerline-breadcrumb-enable nil)
  (lsp-headerline-breadcrumb-enable-diagnostics nil)
  (lsp-headerline-breadcrumb-enable-symbol-numbers nil)
  (lsp-headerline-breadcrumb-icons-enable nil)
  ;; modeline
  (lsp-modeline-code-actions-enable nil)
  (lsp-modeline-diagnostics-enable nil)
  (lsp-modeline-workspace-status-enable nil)
  (lsp-signature-doc-lines 1)
  ;; lens
  (lsp-lens-enable nil)
  ;; semantic
  (lsp-semantic-tokens-enable nil)
  :init
  (setq lsp-use-plists t))

(provide 'hypirion-lsp)
