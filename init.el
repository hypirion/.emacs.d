;; turn off package.el immediately, we use Elpaca
;; This is just to ensure we don't mess up anything.
(setq package-enable-at-startup nil)

(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))

(require 'settings-early-init)

(load (expand-file-name "active-packages.el" user-emacs-directory))
