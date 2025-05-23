;; configuration that needs to be done pre-compile afaik
(setenv "LSP_USE_PLISTS" "true")

;; avoid blinking at night
(let ((h (string-to-number
          (substring (current-time-string) 11 13))))
  (if (<= 7 h 19)
      ;; bg-color = gruvbox-light-hard-bg
      (setq default-frame-alist '((background-color . "#f9f5d7")
                                  (ns-appearance . light)
                                  (ns-transparent-titlebar . t)))
    ;; bg-color = gruvbox-dark-hard-bg
    (setq default-frame-alist '((background-color . "#1d2021")
                                (ns-appearance . dark)
                                (ns-transparent-titlebar . t)))))

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Remove splash screen
(setq inhibit-startup-message t)

;; avoids lotsa regex searching during startup
(defvar default-file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

;; Allow more GC during startup
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 1)

(defun +gc-after-focus-change ()
  "Run GC when frame loses focus."
  (run-with-idle-timer
   5 nil
   (lambda () (unless (frame-focus-state) (garbage-collect)))))

(defun +reset-init-values ()
  (run-with-idle-timer
   1 nil
   (lambda ()
     (setq file-name-handler-alist default-file-name-handler-alist
           gc-cons-percentage 0.1
           gc-cons-threshold 100000000)
     (message "gc-cons-threshold & file-name-handler-alist restored")
     (when (boundp 'after-focus-change-function)
       (add-function :after after-focus-change-function #'+gc-after-focus-change)))))

(with-eval-after-load 'elpaca
  (add-hook 'elpaca-after-init-hook '+reset-init-values))
