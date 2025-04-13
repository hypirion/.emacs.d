(use-package corfu
  :custom
  (corfu-auto nil)
  ;; ^ run without by default, use hypirion-corfu-auto-mode if so
  ;; desired
  (corfu-auto-prefix 2)
  (corfu-auto-delay 0.25)

  (corfu-min-width 80)
  (corfu-max-width corfu-min-width)       ; Always have the same width
  (corfu-count 14)
  (corfu-scroll-margin 4)
  (corfu-cycle nil)

  :init
  (global-corfu-mode))

(defun hypirion-corfu-auto-mode ()
  (setq-local corfu-auto t))

(provide 'hypirion-corfu)
