(defvar elpaca-installer-version 0.11)
(defvar elpaca-directory (expand-file-name "elpaca/" user-emacs-directory))
(defvar elpaca-builds-directory (expand-file-name "builds/" elpaca-directory))
(defvar elpaca-repos-directory (expand-file-name "repos/" elpaca-directory))
(defvar elpaca-order '(elpaca :repo "https://github.com/progfolio/elpaca.git"
                              :ref nil :depth 1 :inherit ignore
                              :files (:defaults "elpaca-test.el" (:exclude "extensions"))
                              :build (:not elpaca--activate-package)))
(let* ((repo  (expand-file-name "elpaca/" elpaca-repos-directory))
       (build (expand-file-name "elpaca/" elpaca-builds-directory))
       (order (cdr elpaca-order))
       (default-directory repo))
  (add-to-list 'load-path (if (file-exists-p build) build repo))
  (unless (file-exists-p repo)
    (make-directory repo t)
    (when (<= emacs-major-version 28) (require 'subr-x))
    (condition-case-unless-debug err
        (if-let* ((buffer (pop-to-buffer-same-window "*elpaca-bootstrap*"))
                  ((zerop (apply #'call-process `("git" nil ,buffer t "clone"
                                                  ,@(when-let* ((depth (plist-get order :depth)))
                                                      (list (format "--depth=%d" depth) "--no-single-branch"))
                                                  ,(plist-get order :repo) ,repo))))
                  ((zerop (call-process "git" nil buffer t "checkout"
                                        (or (plist-get order :ref) "--"))))
                  (emacs (concat invocation-directory invocation-name))
                  ((zerop (call-process emacs nil buffer nil "-Q" "-L" "." "--batch"
                                        "--eval" "(byte-recompile-directory \".\" 0 'force)")))
                  ((require 'elpaca))
                  ((elpaca-generate-autoloads "elpaca" repo)))
            (progn (message "%s" (buffer-string)) (kill-buffer buffer))
          (error "%s" (with-current-buffer buffer (buffer-string))))
      ((error) (warn "%s" err) (delete-directory repo 'recursive))))
  (unless (require 'elpaca-autoloads nil t)
    (require 'elpaca)
    (elpaca-generate-autoloads "elpaca" repo)
    (let ((load-source-file-function nil)) (load "./elpaca-autoloads"))))
(add-hook 'after-init-hook #'elpaca-process-queues)
(elpaca `(,@elpaca-order))

(setq package-enable-at-startup nil)

(elpaca counsel (use-package counsel
  :bind (
    ("M-x" . counsel-M-x)
    ("C-x b" . counsel-ibuffer)
    ("C-x C-f" . counsel-find-file)
    :map minibuffer-local-map
    ("C-r" . 'counsel-minibuffer-history))))

(elpaca swiper)

(elpaca ivy
(use-package ivy :bind (("C-s" . swiper)
  :map ivy-minibuffer-map
  ("TAB" . ivy-alt-done)))
:diminish
:init
(ivy-mode 1))

(elpaca ivy-rich
  :init (ivy-rich-mode 1))

(elpaca evil
  :demand t
  :init
    (setq evil-want-integration t)
    (setq evil-want-keybinding nil)
    (setq evil-vsplit-window-right t)
    (setq evil-split-window-below t)
    (evil-mode))

(elpaca evil-collection
  :config
    (setq evil-collection-list '(dashboard dired ibuffer))
    (evil-collection-init))

(elpaca evil-nerd-commenter (use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines)))

(elpaca doom-modeline
  :init (doom-modeline-mode 1))

(elpaca rainbow-delimiters
  (use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode)))

(elpaca which-key
  :init (which-key-mode)
  :diminish which-key-mode
	:config (setq which-key-idle-delay 0.3))

(elpaca all-the-icons)

(elpaca sudo-edit
  :config
    (dt/leader-keys
      "fu" '(sudo-edit-find-file :wk "Sudo find file")
      "fU" '(sudo-edit :wk "Sudo edit file")))

(setq inhibit-startup-message t)

(delete-selection-mode 1)
(electric-indent-mode -1)
(electric-pair-mode 1)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(setq visible-bell -1)

(global-display-line-numbers-mode t)

(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font" :height 180)

(elpaca catppuccin-theme
  :init
    (load-theme 'catppuccin t))

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(elpaca general
:demand
:config
  (general-evil-setup t)
  (general-create-definer dt/leader-keys
    :states '(normal insert visual emacs)
    :keymaps 'override
    :prefix "SPC"
    :global-prefix "M-SPC")

  (dt/leader-keys
    "." '(find-file :wk "Find file")
    "f c" '((lambda () (interactive) (find-file "~/.config/emacs/config.org")) :wk "Edit emacs config")
    "f r" '(counsel-recentf :wk "Find recent files")
    
    "b" '(:ignore t :wk "buffer")
    "bb" '(switch-to-buffer :wk "Switch buffer")
    "bi" '(ibuffer :wk "Ibuffer")
    "bk" '(kill-this-buffer :wk "Kill this buffer")
    "bn" '(next-buffer :wk "Next buffer")
    "bp" '(previous-buffer :wk "Previous buffer")
    "br" '(revert-buffer :wk "Reload buffer")
    
    "e" '(:ignore t :wk "Evaluate")
    "eb" '(eval-buffer :wk "Evaluate elisp in buffer")
    "ed" '(eval-defun :wk "Evaluate defun containing or after point")
    "ee" '(eval-expression :wk "Evaluate and elisp expression")
    "el" '(eval-last-sexp :wk "Evaluate elisp expression before point")
    "er" '(eval-region :wk "Evaluate elisp in region")
    
    "h" '(:ignore t :wk "Help")
    "hf" '(describe-function :wk "Describe function")
    "hv" '(describe-variable :wk "Describe variable")
    "t" '(:ignore t :wk "Toggle")
    "tl" '(display-line-numbers-mode :wk "Toggle line numbers")
    "tt" '(visual-line-mode :wk "Toggle truncated lines")))

(elpaca lsp-mode (use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
    (setq lsp-keymap-prefix "C-c l")
  :config
    (lsp-enable-which-key-integration t)))

(elpaca company (use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
    ("<tab>" . company-complete-selection))
    (:map lsp-mode-map
      ("<tab>" . company-indent-or-complete-common))
  :custom 
    (company-minimum-prefix-length 1)
    (company-idle-delay 0.0)))

(elpaca zig-mode (use-package zig-mode
  :mode "\\.zig\\'"
  :hook (zig-mode . lsp-deferred)))

(elpaca org-bullets (use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)))
