(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode -10)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(menu-bar-mode -1)

(setq visible-bell t)

(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font" :height 150)

(column-number-mode 1)
(global-display-line-numbers-mode 1)

; (dolist (mode '(org-mode-hook
; 		term-mode-hook
; 		eshell-mode-hook))
;   (add hook mode (lambda () (display-line-numbers-mode 0))))

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/") ("org", "https://orgmode.org/elpa") ("elpa", "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents (package-refresh-contents))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package catppuccin-theme
  :ensure t
  :config
  (load-theme 'catppuccin t))

(use-package diminish :ensure t)  ; Если не установлен

(use-package ivy
  :ensure t
  :diminish   ; Скрыть ivy из строки состояния (требует пакета diminish)
  :bind (("C-s" . swiper)  ; Глобальная привязка для swiper
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)

         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-ignore-case t))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.2))
