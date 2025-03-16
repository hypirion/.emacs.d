(require 'hypirion-transient)

(defun magit-fill-column ()
  (setq fill-column 72))

(use-package magit
  :after transient
  :config
  (global-set-key (kbd "C-x g") 'magit-status)
  :hook ((git-commit-mode . magit-fill-column)))

(provide 'hypirion-magit)
