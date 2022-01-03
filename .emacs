;; Any add to list for package-archives (to add marmalade or melpa) goes here
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (eglot go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq-default tab-width 2)
(load-theme 'tango-dark t)

(setq firstarg (getenv "GOFMT_LOCAL_PARAM"))
(setq gofmt-args `(,firstarg))
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(setq-default spacemacs-yank-indent-threshold 0)


;; Test New .emacs file stuff
;;(setq debug-on-error t)




;; ;; Configure Project for Eglot
;; (require 'project)

;; (defun project-find-go-module (dir)
;; 	(when-let ((root (locate-dominating-file dir "go.mod")))
;; 						(cons 'go-module root)))

;; (cl-defmethod project-root ((project (head go-module))) (cdr project))

;; ;; (require 'company)
;; ;; (require 'yasnippet)

;; (require 'go-mode)
;; (require 'eglot)
;; (add-hook 'go-mode-hook 'eglot-ensure)

;; ;; Optional: install eglot-format-buffer as a save hook.
;; ;; The depth of -10 places this before eglot's willSave notification,
;; ;; so that that notification reports the actual contents that will be saved.
;; (defun eglot-format-buffer-on-save ()
;; 	(add-hook 'before-save-hook #'eglot-format-buffer -10 t))
;; (add-hook 'go-mode-hook #'eglot-format-buffer-on-save)


;; (setq-default eglot-workspace-configuration
;; 							'((:gopls .
;; 												((staticcheck . t)
;; 												          (matcher . "CaseSensitive")))))
