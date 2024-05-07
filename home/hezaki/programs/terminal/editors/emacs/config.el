(set-frame-font "JetBrainsMono NF 13" nil t)
(setq global-prettify-symbols-mode t)
(setq doom-themes-enable-bold t
	  	doom-themes-enable-italic t
			nerd-icons-font-family "JetBrainsMono NF")
(load-theme 'doom-gruvbox :no-confirm)
(doom-themes-visual-bell-config)

(custom-set-faces
  `(tab-bar ((t (:background ,(doom-color 'base02)))))
	`(tab-line ((t (:background ,(doom-color 'base02)))))
	`(org-block ((t (:background ,(doom-color 'base02)))))
	`(centaur-tabs-default ((t (:background ,(doom-color 'base02)))))
	`(centaur-tabs-unselected ((t (:background ,(doom-color 'base02)))))
	`(mode-line ((t (:background ,(doom-color 'base02)))))
	`(doom-modeline-panel ((t (:background ,(doom-color 'base02))))))

(custom-set-variables
	'(global-display-line-numbers-mode t)
	'(global-visual-line-mode t)
	'(global-tree-sitter-mode t)
	'(menu-bar-mode nil)
	'(tab-bar-new-button-show nil)
	'(tab-bar-close-button-show nil)
	'(tab-line-separator "")
	'(scroll-bar-mode nil)
	'(tab-bar-mode nil)
	'(tool-bar-mode nil)
	'(recentf-mode t)
	'(global-hl-line-mode t)
	'(pixel-scroll-precision-mode t))
  '(highlight-indent-guides-method 'character)

(add-hook 'dired-mode-hook #'all-the-icons-dired-mode)

(global-ligature-mode t)

(electric-pair-mode t)

(setq scroll-step 1
			scroll-margin 5
      scroll-conservatively 10000
      next-screen-context-lines 5
      line-move-visual nil)

(evil-mode t)
(setq evil-search-module 'evil-search)

(global-evil-mc-mode t)

(global-anzu-mode t)

(electric-indent-mode nil)
(setq org-auto-align-tags nil
			org-edit-src-content-indentation 0
			org-tags-column 0
			org-auto-align-tags nil
			org-catch-invisible-edits 'show-and-error
			org-special-ctrl-a/e t
			org-insert-heading-respect-content t
			org-hide-emphasis-markers t
			org-pretty-entities t
			org-startup-indented t
      org-ellipsis " ▾"
      org-hide-emphasis-markers t
      org-pretty-entities t
      org-src-fontify-natively t
		  org-fontify-whole-heading-line t
      org-fontify-quote-and-verse-blocks t
		  org-edit-src-content-indentation 2
      org-hide-block-startup nil
      org-src-tab-acts-natively t
      org-src-preserve-indentation nil
      org-startup-folded t
      org-cycle-separator-lines 2
      org-hide-leading-stars t
      org-highlight-latex-and-related '(native)
      org-goto-auto-isearch nil)

(with-eval-after-load 'org (global-org-modern-mode))
(setq org-modern-block-fringe nil
			org-modern-todo t
			org-modern-table nil
      org-modern-variable-pitch nil)

(add-hook 'org-mode-hook 'evil-org-mode)

(add-hook 'org-mode-hook 'toc-org-mode)

(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.180))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.140))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.120))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.080))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.040))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.020)))))

(setq org-src-preserve-indentation t)

(add-hook 'org-mode-hook #'valign-mode)

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")

(defun affe-find-/ ()
 (interactive)
 (affe-find "/"))

(defun affe-grep-/ ()
 (interactive)
 (affe-grep "/"))

(general-define-key
	:states '(normal visual)
	"C-=" 'text-scale-increase
	"C--" 'text-scale-decrease
	"gc" 'comment-line
	"ff" 'affe-find-/
	"fg" 'affe-grep-/
	"tb" 'consult-buffer
	"tt" 'vterm-toggle)

(dashboard-setup-startup-hook)
(setq dashboard-set-heading-icons t
			dashboard-set-file-icons t
			dashboard-banner-logo-title "hezaki?"
			dashboard-startup-banner 'logo
			dashboard-center-content t
			dashboard-show-shortcuts nil
			dashboard-vertically-center-content t
			dashboard-set-heading-icons t
			dashboard-set-file-icons t)

(global-corfu-mode t)
(corfu-history-mode t)
(corfu-popupinfo-mode t)
(setq corfu-auto t
			corfu-cycle t
      corfu-auto-delay 0
      corfu-auto-prefix 1 
      tab-always-indent 'complete)

(add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)

(add-hook 'prog-mode-hook 'eglot-ensure)

(add-hook 'prog-mode-hook #'tree-sitter-hl-mode)

(add-hook 'prog-mode-hook #'rainbow-mode)

(beacon-mode t)

(setq-default tab-width 2)
(set-window-margins (selected-window) 0 0)
(set-frame-parameter nil 'internal-border-width 0)
(setq standard-indent 2
			e-short-answers t
			inhibit-compacting-font-caches t
			auto-save-interval 1000
			package-enable-at-startup nil
			pixel-resolution-fine-flag t
			select-enable-clipboard t
			indent-line-function 'insert-tab
			line-spacing 0
			inhibit-startup-screen t
			make-backup-files nil)

(setq inferior-lisp-program "sbcl")

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(global-flycheck-mode t)

(vertico-mode t)
(vertico-reverse-mode t)

(setq completion-styles '(orderless)
      completion-category-overrides '((file (styles basic partial-completion)))
			orderless-skip-highlighting (lambda () selectrum-is-active)
			selectrum-highlight-candidates-function #'orderless-highlight-matches)

(doom-modeline-mode 1)
(setq doom-modeline-icon t
			doom-modeline-bar-width 0
			doom-modeline-buffer-state-icon t
			doom-modeline-major-mode-color-icon t
			doom-modeline-persp-name t
      doom-modeline-persp-icon t)

(marginalia-mode t)

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

(apheleia-global-mode t)

(defun olivetti-start ()
 (interactive)
 (olivetti-set-width "110" && olivetti-mode))

(gcmh-mode t)
(setq gc-cons-threshold 402653184
			gc-cons-percentage 0.4)
(add-hook 'emacs-startup-hook
	(lambda ()
	(message "*** Emacs loaded in %s with %d garbage collections."
			(format "%.2f seconds"
			(float-time
			(time-subtract after-init-time before-init-time)))
			gcs-done)))
