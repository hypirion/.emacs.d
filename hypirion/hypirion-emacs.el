(use-package emacs
  :demand t
  :ensure nil

  :init

  (setq enable-recursive-minibuffers t)

  (setq backup-by-copying t)

  ;; Sentences do no end with double space
  (setq sentence-end-double-space nil)

  (setq frame-inhibit-implied-resize t) ;; useless for a tiling window manager

  (setq user-full-name "Jean Niklas L'orange") ;; my details
  (setq user-mail-address "jeannikl@hypirion.com")

  (defalias 'yes-or-no-p 'y-or-n-p) ;; life is too short

  (setq-default indent-tabs-mode nil) ;; no tabs

  (setq-default tab-width 2)

  ;; Avoid making backup files
  (setq make-backup-files nil)

  (setq backup-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
        `((".*" ,temporary-file-directory t)))

  (setq create-lockfiles nil) ;; no need to create lockfiles

  (set-charset-priority 'unicode) ;; utf8 everywhere
  (setq locale-coding-system 'utf-8
        coding-system-for-read 'utf-8
        coding-system-for-write 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-selection-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  (setq default-process-coding-system '(utf-8-unix . utf-8-unix))

  ;; Don't persist a custom file
  (setq custom-file (make-temp-file "")) ; use a temp file as a placeholder
  (setq custom-safe-themes t) ; mark all themes as safe, since we can't persist now
  (setq enable-local-variables :all)    ; fix =defvar= warnings

  ;; less noise when compiling elisp
  (setq byte-compile-warnings '(not free-vars unresolved noruntime lexical make-local))
  (setq native-comp-async-report-warnings-errors nil)
  (setq load-prefer-newer t)

  (show-paren-mode t)

  ;; Hide commands in M-x which don't work in the current mode
  (setq read-extended-command-predicate #'command-completion-default-include-p)

  ;; Do not allow the cursor in the minibuffer prompt
  ;; TODO: Not working somehow
  ;; (minibuffer-prompt-properties
  ;;  '(read-only t cursor-intangible t face minibuffer-prompt))

  ;; Remove the darn bell sound
  (setq visible-bell t)

  ;; Line numbers everywhere
  (global-display-line-numbers-mode)

  ;; highlight current line
  (global-hl-line-mode)

  ;; Kill marked area
  (delete-selection-mode 1)

  ;; show linenumber/column
  (setq column-number-mode t)


  (dolist (kbd-str '("<left>" "<right>" "<up>" "<down>"
                     "<C-left>" "<C-right>" "<C-up>" "<C-down>"
                     "<M-left>" "<M-right>" "<M-up>" "<M-down>"
                     "C-x C-s" "C-x C-f" "C-x C-v" "C-g"
                     "C-x o" "C-x b"))
    (global-unset-key (kbd kbd-str)))

  ;; Remember and restore last cursor location of opened files
  (save-place-mode 1)

  ;; enable recently seen files
  (recentf-mode 1)

  :bind (("<up>" . (lambda () (interactive) (scroll-down 1)))
         ("<down>" . (lambda () (interactive) (scroll-up 1)))
         ("s-s" . save-buffer)
         ("s-f" . find-file)
         ("s-v" . find-alternate-file)
         ("s-g" . keyboard-escape-quit)
         ("s-o s-o" . other-window))

  :hook ((prog-mode . display-fill-column-indicator-mode)
         (text-mode . turn-on-auto-fill)))


(provide 'hypirion-emacs)
