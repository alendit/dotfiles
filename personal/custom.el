(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(better-jumper-context (quote buffer))
 '(better-jumper-use-evil-jump-advice nil)
 '(clojure-align-forms-automatically t)
 '(display-line-numbers t)
 '(jumplist-hook-commands
   (quote
    (swiper-isearch helm-swoop dired-jump helm-for-files isearch-forward end-of-buffer beginning-of-buffer find-file)))
 '(org-confirm-babel-evaluate nil)
 '(package-selected-packages
   (quote
    (org org-brain ein jupyter sayid jumplist avy-zap clj-refactor geiser lsp-ui company-lsp json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company counsel swiper ivy exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number move-text magit projectile imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring beacon anzu ace-window)))
 '(scroll-preserve-screen-position t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "C-<") 'jumplist-previous)
(global-set-key (kbd "C->") 'jumplist-next)
(global-unset-key (kbd "C-:"))
(global-set-key (kbd "C-:") 'avy-goto-char-2)
(global-set-key "\M-n" "\C-u1\C-v")
(global-set-key "\M-p" "\C-u1\M-v")

(eval-after-load 'clojure-mode
  '(sayid-setup-package))


(require 'clj-refactor)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m")
  (local-unset-key (kbd "C-:")))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (jupyter . t)))


(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(add-to-list 'eshell-visual-commands "htop")
