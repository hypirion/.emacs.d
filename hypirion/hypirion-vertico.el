(use-package vertico
  :init
  (vertico-mode)

  ;; Custom functions for enhanced behavior
  :config
  (defun hypirion-delete-directory-with-backspace ()
    "Delete entire directory name when pressing backspace at a path separator."
    (interactive)
    (if (and (eq (char-before) ?/)
             (> (point) (minibuffer-prompt-end)))
        (let ((end (point))
              (start (save-excursion
                       (backward-char)
                       (while (and (> (point) (minibuffer-prompt-end))
                                   (not (eq (char-before) ?/)))
                         (backward-char))
                       (point))))
          (delete-region start end))
      (call-interactively #'backward-delete-char)))

  (defun hypirion-vertico-tab-action ()
    "Open the selected file if it's the only candidate, otherwise do normal TAB."
    (interactive)
    (if (and (= (length vertico--candidates) 1)
             (not (string-suffix-p "/" (car vertico--candidates))))
        (vertico-exit)
      (vertico-insert)))

  ;; Add these key bindings to the vertico-map
  :bind (:map vertico-map
              ("DEL" . hypirion-delete-directory-with-backspace)
              ("TAB" . hypirion-vertico-tab-action)))

(use-package vertico-posframe
  :init
  (vertico-posframe-mode 1)
  :custom
  (vertico-posframe-parameters '((left-fringe . 8)
                                 (right-fringe . 8))))


(provide 'hypirion-vertico)
