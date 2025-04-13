(use-package lsp-mode
  :hook ((lsp-mode . lsp-diagnostics-mode)
         (lsp-mode . lsp-completion-mode-maybe)
         (lsp-mode . hypirion-corfu-lsp-setup))

  :preface
  (defun lsp-completion-mode-maybe ()
    (unless (bound-and-true-p cider-mode)
      (lsp-completion-mode 1)))

  (defun hypirion-corfu-lsp-setup ()
    (setq-local completion-styles '(orderless)
                completion-category-defaults nil))

  :custom
  ;; TODO: This probably needs some fine tuning
  (lsp-session-file (expand-file-name ".lsp-session" user-emacs-directory))
  (lsp-idle-delay 0.5)
  (lsp-completion-enable t)
  (lsp-completion-provider :none)

  (lsp-enable-file-watchers t)
  :init
  (setq lsp-use-plists t))

(defun hypirion-lsp-keybindings ()
  (local-set-key (kbd "M-.") 'lsp-find-definition)
  (local-set-key (kbd "M-*") 'pop-tag-mark))

(defun hypirion-lsp-format-and-organize-imports-on-save ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(provide 'hypirion-lsp)
