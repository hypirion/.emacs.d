(use-package aidermacs
  :ensure (:host github :repo "MatthewZMD/aidermacs")
  :bind (("C-c a" . aidermacs-transient-menu))
  :config
  ;; Anthropic_API_KEY is set up in .profile
  :custom
                                        ; See the Configuration section below
  (aidermacs-use-architect-mode t)
  (aidermacs-default-model "sonnet")
  (aidermacs-watch-files t)
  (aidermacs-show-diff-after-change nil))

(provide 'hypirion-aidermacs)
