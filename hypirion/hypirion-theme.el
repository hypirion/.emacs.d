(setq hypirion-theme-current nil)

(defun hypirion-theme-load-gruvbox (theme)
  (when (not (equal hypirion-theme-current theme))
    (load-theme theme t)

    ;; this funny business relates to
    ;; https://github.com/greduan/emacs-theme-gruvbox/issues/219
    (set-face-attribute 'vertico-posframe-border nil :background "#8a8a8a")

    (setq hypirion-theme-current theme)))

(use-package gruvbox-theme
  :demand t
  :config

  (defun hypirion-theme-synchronise ()
    (let* ((h (string-to-number
               (substring (current-time-string) 11 13)))
           (next-theme (if (<= 7 h 19)
                           'gruvbox-light-hard
                         'gruvbox-dark-hard)))
      (hypirion-theme-load-gruvbox next-theme)))

  (run-with-timer 0 60 #'hypirion-theme-synchronise))



(provide 'hypirion-theme)
