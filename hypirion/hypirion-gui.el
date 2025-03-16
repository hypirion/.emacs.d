(use-package emacs
  :demand t
  :ensure nil
  :if window-system
  :init
  (set-face-attribute 'default nil
                      :family "comiccode"
                      :height 120)
  )


(provide 'hypirion-gui)
