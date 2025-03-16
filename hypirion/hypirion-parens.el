(use-package paredit
  :bind (:map paredit-mode-map
              ("M-n" . paredit-splice-sexp-killing-forward)
              ("M-p" . paredit-splice-sexp-killing-backward))
  :hook (emacs-lisp-mode . paredit-mode))

(use-package highlight-parentheses
  :demand t
  :config
  (hl-paren-set 'hl-paren-colors
                '("red1" "magenta2" "purple" "dodgerblue2" "cyan2" "springgreen2"
                  "green2" "yellow" "darkorange1"))
  (global-highlight-parentheses-mode 1))

(provide 'hypirion-parens)
