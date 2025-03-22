;; modular package configuration.

(add-to-list 'load-path (expand-file-name "hypirion" user-emacs-directory))

(defvar hypirion-active-packages
  '(;;;; essentials
    hypirion-elpaca
    hypirion-emacs

    ;;;; UI
    hypirion-theme
    hypirion-gui
    hypirion-all-the-icons

    ;;;; global minibuffer utilities
    hypirion-vertico
    hypirion-savehist
    hypirion-orderless
    hypirion-marginalia
    hypirion-consult
    hypirion-embark
    hypirion-wgrep
    hypirion-project

    ;;;; autocompletion-related stuff
    hypirion-corfu
    hypirion-lsp
    hypirion-flycheck

    ;;;; global utilities
    hypirion-whitespace
    hypirion-magit

    ;;;; specific filetypes
    hypirion-treesit-auto
    hypirion-parens
    hypirion-clj
    hypirion-markdown))

(dolist (p hypirion-active-packages)
  (require p))
