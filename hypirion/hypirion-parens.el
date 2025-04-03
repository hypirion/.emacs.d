(use-package smartparens
  :ensure t
  :hook ((emacs-lisp-mode . smartparens-strict-mode)
         (lisp-mode        . smartparens-strict-mode)
         (lisp-interaction-mode . smartparens-strict-mode)
         (ielm-mode        . smartparens-strict-mode)
         (clojure-mode     . smartparens-strict-mode)
         (scheme-mode      . smartparens-strict-mode))
  :bind (:map smartparens-mode-map
              ("C-)" . sp-forward-slurp-sexp)
              ("C-}" . sp-forward-barf-sexp)
              ("C-(" . sp-backward-slurp-sexp)
              ("C-{" . sp-backward-barf-sexp)
              ("M-n" . sp-splice-sexp-killing-forward)
              ("M-p" . sp-splice-sexp-killing-backward))
  :config
  (require 'smartparens-config)

  ;; Enable globally, but strict mode in Lisp buffers
  (smartparens-global-mode t)

  (sp-use-paredit-bindings)

  :custom
  (sp-autoinsert-pair t)
  (sp-ignore-modes-list nil) ;; apply smartparens everywhere

  ;; Better backspace/delete behavior in strict mode
  (sp-autodelete-pair t)
  (sp-cancel-autoskip-on-backward-movement nil))

;; Some FIXMEs:
;;
;; C-0 C-k doesn't delete backwards of the current line
;;
;; (|) -- sp-splice-sexp-killing-backward
;; |)
;; (wtf)
;;
;; Parens are also balanced inside comments. Hrm.

(use-package highlight-parentheses
  :demand t
  :config
  (hl-paren-set 'hl-paren-colors
                '("red1" "magenta2" "purple" "dodgerblue2" "cyan2" "springgreen2"
                  "green2" "yellow" "darkorange1"))
  (global-highlight-parentheses-mode 1))

(provide 'hypirion-parens)
