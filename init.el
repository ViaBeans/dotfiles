(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;; from purcell/emacs.d
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

(package-initialize)

(require-package 'evil)

(setq evil-search-module 'evil-search
      evil-want-C-u-scroll t
      evil-want-C-w-in-emacs-state t)
(setq inhibit-splash-screen t)
(require 'evil)
(evil-mode t)





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(helm-completion-style (quote emacs))
 '(menu-bar-mode -1)
 '(package-selected-packages
   (quote
    (json-mode markdown-mode auto-complete autopair latex-preview-pane helm flycheck ergoemacs-mode evil auto-correct)))
 '(scroll-bar-mode nil)
 '(setq default-frame-alist t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tool-bar-style (quote image)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(set-frame-font "Fira Code-18" nil t))

(require 'neotree)
(global-set-key [f1] 'neotree-toggle)

(global-flycheck-mode)
(latex-preview-pane-enable)

(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(define-key helm-map (kbd "C-j") 'helm-next-line)
(define-key helm-map (kbd "C-k") 'helm-previous-line)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(ac-config-default)

(require 'autopair)
(autopair-global-mode)

(require 'powerline)
(powerline-center-evil-theme)
(global-linum-mode 1)
