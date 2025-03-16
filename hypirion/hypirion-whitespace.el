(use-package whitespace
  :demand t
  :ensure nil
  :custom
  ;; this is what makes tabs into » etc
  (whitespace-style '(tabs tab-mark face trailing))
  :custom-face
  (whitespace-tab ((((class color) (background dark))
                    (:foreground "grey25"))
                   (((class color) (background light))
                    (:foreground "lightgray"))
                   (t (:inverse-video t))))
  :config
  (global-whitespace-mode))

(provide 'hypirion-whitespace)
