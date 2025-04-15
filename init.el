;; note: early-init.el is loaded before init.el

;; turn off package.el immediately, we use Elpaca
;; This is just to ensure we don't mess up anything.
(setq package-enable-at-startup nil)

(load (expand-file-name "active-packages.el" user-emacs-directory))
