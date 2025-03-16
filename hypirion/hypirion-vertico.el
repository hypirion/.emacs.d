(use-package vertico
  :init
  (vertico-mode))

(use-package vertico-posframe
  :init
  (vertico-posframe-mode 1)
  :custom
  (vertico-posframe-parameters '((left-fringe . 8)
                                 (right-fringe . 8))))


(provide 'hypirion-vertico)
