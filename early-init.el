;; avoid blinking at night
(let ((h (string-to-number
          (substring (current-time-string) 11 13))))
  (when (not (<= 7 h 19))
    ;; bg-color = gruvbox-dark-hard-bg
    (setq default-frame-alist '((background-color . "#1d2021")
                                (ns-appearance . dark)
                                (ns-transparent-titlebar . t)))))


(setenv "LSP_USE_PLISTS" "true")
