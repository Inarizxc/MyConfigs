;;; lsp-mode-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from lsp-actionscript.el

(register-definition-prefixes "lsp-actionscript" '("lsp-actionscript-"))


;;; Generated autoloads from lsp-ada.el

(put 'lsp-ada-project-file 'safe-local-variable 'stringp)
(register-definition-prefixes "lsp-ada" '("lsp-ada-"))


;;; Generated autoloads from lsp-angular.el

(register-definition-prefixes "lsp-angular" '("lsp-client"))


;;; Generated autoloads from lsp-ansible.el

(register-definition-prefixes "lsp-ansible" '("lsp-ansible-"))


;;; Generated autoloads from lsp-asm.el

(register-definition-prefixes "lsp-asm" '("lsp-asm-"))


;;; Generated autoloads from lsp-astro.el

(register-definition-prefixes "lsp-astro" '("lsp-astro--get-initialization-options"))


;;; Generated autoloads from lsp-autotools.el

(register-definition-prefixes "lsp-autotools" '("lsp-autotools-"))


;;; Generated autoloads from lsp-awk.el

(register-definition-prefixes "lsp-awk" '("lsp-awk-executable"))


;;; Generated autoloads from lsp-bash.el

(register-definition-prefixes "lsp-bash" '("lsp-bash-"))


;;; Generated autoloads from lsp-beancount.el

(register-definition-prefixes "lsp-beancount" '("lsp-beancount-"))


;;; Generated autoloads from lsp-bufls.el

(register-definition-prefixes "lsp-bufls" '("lsp-buf"))


;;; Generated autoloads from lsp-c3.el

(register-definition-prefixes "lsp-c3" '("lsp-c"))


;;; Generated autoloads from lsp-camel.el

(register-definition-prefixes "lsp-camel" '("lsp-camel-"))


;;; Generated autoloads from lsp-clangd.el

(autoload 'lsp-cpp-flycheck-clang-tidy-error-explainer "lsp-clangd" "\
Explain a clang-tidy ERROR by scraping documentation from llvm.org.

(fn ERROR)")
(register-definition-prefixes "lsp-clangd" '("lsp-c"))


;;; Generated autoloads from lsp-clojure.el

(autoload 'lsp-clojure-show-test-tree "lsp-clojure" "\
Show a test tree and focus on it if IGNORE-FOCUS? is nil.

(fn IGNORE-FOCUS?)" t)
(autoload 'lsp-clojure-show-project-tree "lsp-clojure" "\
Show a project tree with source-paths and dependencies.
Focus on it if IGNORE-FOCUS? is nil.

(fn IGNORE-FOCUS?)" t)
(register-definition-prefixes "lsp-clojure" '("lsp-clojure-"))


;;; Generated autoloads from lsp-cmake.el

(register-definition-prefixes "lsp-cmake" '("lsp-cmake-"))


;;; Generated autoloads from lsp-cobol.el

(add-hook 'cobol-mode-hook #'lsp-cobol-start-ls)
(autoload 'lsp-cobol-start-ls "lsp-cobol" "\
Start the COBOL language service." t)
(register-definition-prefixes "lsp-cobol" '("lsp-cobol-"))


;;; Generated autoloads from lsp-completion.el

(define-obsolete-variable-alias 'lsp-prefer-capf 'lsp-completion-provider "\
lsp-mode 7.0.1")
(define-obsolete-variable-alias 'lsp-enable-completion-at-point 'lsp-completion-enable "\
lsp-mode 7.0.1")
(defvar lsp-completion-enable t "\
Enable `completion-at-point' integration.")
(custom-autoload 'lsp-completion-enable "lsp-completion" t)
(autoload 'lsp-completion-at-point "lsp-completion" "\
Get lsp completions.")
(autoload 'lsp-completion--enable "lsp-completion" "\
Enable LSP completion support.")
(autoload 'lsp-completion-mode "lsp-completion" "\
Toggle LSP completion support.

This is a minor mode.  If called interactively, toggle the
`Lsp-Completion mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-completion-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(add-hook 'lsp-configure-hook (lambda nil (when (and lsp-auto-configure lsp-completion-enable) (lsp-completion--enable))))
(register-definition-prefixes "lsp-completion" '("lsp-"))


;;; Generated autoloads from lsp-copilot.el

(autoload 'lsp-copilot-check-status "lsp-copilot" "\
Checks the status of the Copilot Server" t)
(autoload 'lsp-copilot-login "lsp-copilot" "\
Log in with Copilot.

This function is automatically called during the client initialization if needed" t)
(register-definition-prefixes "lsp-copilot" '("lsp-copilot-"))


;;; Generated autoloads from lsp-credo.el

(register-definition-prefixes "lsp-credo" '("lsp-credo-"))


;;; Generated autoloads from lsp-crystal.el

(register-definition-prefixes "lsp-crystal" '("lsp-clients-crystal-executable"))


;;; Generated autoloads from lsp-csharp.el

(register-definition-prefixes "lsp-csharp" '("lsp-csharp-"))


;;; Generated autoloads from lsp-css.el

(register-definition-prefixes "lsp-css" '("lsp-css-"))


;;; Generated autoloads from lsp-cucumber.el

(register-definition-prefixes "lsp-cucumber" '("lsp-cucumber-"))


;;; Generated autoloads from lsp-cypher.el

(register-definition-prefixes "lsp-cypher" '("lsp-client--cypher-ls-server-command"))


;;; Generated autoloads from lsp-diagnostics.el

(define-obsolete-variable-alias 'lsp-diagnostic-package 'lsp-diagnostics-provider "\
lsp-mode 7.0.1")
(define-obsolete-variable-alias 'lsp-flycheck-default-level 'lsp-diagnostics-flycheck-default-level "\
lsp-mode 7.0.1")
(autoload 'lsp-diagnostics-lsp-checker-if-needed "lsp-diagnostics")
(autoload 'lsp-diagnostics--enable "lsp-diagnostics" "\
Enable LSP checker support.")
(autoload 'lsp-diagnostics-mode "lsp-diagnostics" "\
Toggle LSP diagnostics integration.

This is a minor mode.  If called interactively, toggle the
`Lsp-Diagnostics mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-diagnostics-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(add-hook 'lsp-configure-hook (lambda nil (when lsp-auto-configure (lsp-diagnostics--enable))))
(register-definition-prefixes "lsp-diagnostics" '("lsp-diagnostics-"))


;;; Generated autoloads from lsp-dired.el

(defvar lsp-dired-mode nil "\
Non-nil if Lsp-Dired mode is enabled.
See the `lsp-dired-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `lsp-dired-mode'.")
(custom-autoload 'lsp-dired-mode "lsp-dired" nil)
(autoload 'lsp-dired-mode "lsp-dired" "\
Display `lsp-mode' icons for each file in a dired buffer.

This is a global minor mode.  If called interactively, toggle the
`Lsp-Dired mode' mode.  If the prefix argument is positive, enable the
mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='lsp-dired-mode)'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "lsp-dired" '("lsp-dired-"))


;;; Generated autoloads from lsp-dockerfile.el

(register-definition-prefixes "lsp-dockerfile" '("lsp-dockerfile-language-server-command"))


;;; Generated autoloads from lsp-dot.el

(register-definition-prefixes "lsp-dot" '("lsp-dot--dot-ls-server-command"))


;;; Generated autoloads from lsp-earthly.el

(register-definition-prefixes "lsp-earthly" '("lsp-earthly-"))


;;; Generated autoloads from lsp-elixir.el

(register-definition-prefixes "lsp-elixir" '("lsp-elixir-"))


;;; Generated autoloads from lsp-elm.el

(register-definition-prefixes "lsp-elm" '("lsp-"))


;;; Generated autoloads from lsp-emmet.el

(register-definition-prefixes "lsp-emmet" '("lsp-emmet-ls-command"))


;;; Generated autoloads from lsp-erlang.el

(register-definition-prefixes "lsp-erlang" '("lsp-erlang-"))


;;; Generated autoloads from lsp-eslint.el

(register-definition-prefixes "lsp-eslint" '("lsp-"))


;;; Generated autoloads from lsp-fennel.el

(register-definition-prefixes "lsp-fennel" '("lsp-fennel--ls-command"))


;;; Generated autoloads from lsp-fortran.el

(register-definition-prefixes "lsp-fortran" '("lsp-clients-"))


;;; Generated autoloads from lsp-fsharp.el

(autoload 'lsp-fsharp--workspace-load "lsp-fsharp" "\
Load all of the provided PROJECTS.

(fn PROJECTS)")
(register-definition-prefixes "lsp-fsharp" '("lsp-fsharp-"))


;;; Generated autoloads from lsp-gdscript.el

(register-definition-prefixes "lsp-gdscript" '("lsp-gdscript-"))


;;; Generated autoloads from lsp-gleam.el

(register-definition-prefixes "lsp-gleam" '("lsp-gleam-executable"))


;;; Generated autoloads from lsp-glsl.el

(register-definition-prefixes "lsp-glsl" '("lsp-glsl-executable"))


;;; Generated autoloads from lsp-go.el

(register-definition-prefixes "lsp-go" '("lsp-go-"))


;;; Generated autoloads from lsp-golangci-lint.el

(register-definition-prefixes "lsp-golangci-lint" '("lsp-golangci-lint-"))


;;; Generated autoloads from lsp-graphql.el

(register-definition-prefixes "lsp-graphql" '("lsp-"))


;;; Generated autoloads from lsp-groovy.el

(register-definition-prefixes "lsp-groovy" '("lsp-groovy-"))


;;; Generated autoloads from lsp-hack.el

(register-definition-prefixes "lsp-hack" '("lsp-clients-hack-command"))


;;; Generated autoloads from lsp-haxe.el

(register-definition-prefixes "lsp-haxe" '("lsp-"))


;;; Generated autoloads from lsp-headerline.el

(autoload 'lsp-headerline-breadcrumb-mode "lsp-headerline" "\
Toggle breadcrumb on headerline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Headerline-Breadcrumb mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-headerline-breadcrumb-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(autoload 'lsp-breadcrumb-go-to-symbol "lsp-headerline" "\
Go to the symbol on breadcrumb at SYMBOL-POSITION.

(fn SYMBOL-POSITION)" t)
(autoload 'lsp-breadcrumb-narrow-to-symbol "lsp-headerline" "\
Narrow to the symbol range on breadcrumb at SYMBOL-POSITION.

(fn SYMBOL-POSITION)" t)
(register-definition-prefixes "lsp-headerline" '("lsp-headerline-"))


;;; Generated autoloads from lsp-html.el

(register-definition-prefixes "lsp-html" '("lsp-html-"))


;;; Generated autoloads from lsp-hy.el

(register-definition-prefixes "lsp-hy" '("lsp-clients-hy-server-executable"))


;;; Generated autoloads from lsp-icons.el

(register-definition-prefixes "lsp-icons" '("lsp-"))


;;; Generated autoloads from lsp-ido.el

(autoload 'lsp-ido-workspace-symbol "lsp-ido" "\
`ido' for lsp workspace/symbol.
When called with prefix ARG the default selection will be symbol at point.

(fn ARG)" t)
(register-definition-prefixes "lsp-ido" '("lsp-ido-"))


;;; Generated autoloads from lsp-idris.el

(register-definition-prefixes "lsp-idris" '("lsp-idris2-lsp-"))


;;; Generated autoloads from lsp-iedit.el

(autoload 'lsp-iedit-highlights "lsp-iedit" "\
Start an `iedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t)
(autoload 'lsp-iedit-linked-ranges "lsp-iedit" "\
Start an `iedit' for `textDocument/linkedEditingRange'" t)
(autoload 'lsp-evil-multiedit-highlights "lsp-iedit" "\
Start an `evil-multiedit' operation on the documentHighlights at point.
This can be used as a primitive `lsp-rename' replacement if the
language server doesn't support renaming.

See also `lsp-enable-symbol-highlighting'." t)
(autoload 'lsp-evil-multiedit-linked-ranges "lsp-iedit" "\
Start an `evil-multiedit' for `textDocument/linkedEditingRange'" t)
(autoload 'lsp-evil-state-highlights "lsp-iedit" "\
Start `iedit-mode'. for `textDocument/documentHighlight'" t)
(autoload 'lsp-evil-state-linked-ranges "lsp-iedit" "\
Start `iedit-mode'. for `textDocument/linkedEditingRange'" t)
(register-definition-prefixes "lsp-iedit" '("lsp-iedit--on-ranges"))


;;; Generated autoloads from lsp-inline-completion.el

(autoload 'lsp-inline-completion-display "lsp-inline-completion" "\
Displays the inline completions overlay.

(fn &optional IMPLICIT)" t)
(defvar lsp-inline-completion-enable t "\
If non-nil it will enable inline completions on idle.")
(custom-autoload 'lsp-inline-completion-enable "lsp-inline-completion" t)
(autoload 'lsp-inline-completion-mode "lsp-inline-completion" "\
Mode automatically displaying inline completions.

This is a minor mode.  If called interactively, toggle the
`Lsp-Inline-Completion mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-inline-completion-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(add-hook 'lsp-configure-hook (lambda nil (when (and lsp-inline-completion-enable (lsp-feature? "textDocument/inlineCompletion")) (lsp-inline-completion-mode))))
(autoload 'lsp-inline-completion-company-integration-mode "lsp-inline-completion" "\
Minor mode to be used when company mode is active with lsp-inline-completion-mode.

This is a minor mode.  If called interactively, toggle the
`Lsp-Inline-Completion-Company-Integration mode' mode.  If the prefix
argument is positive, enable the mode, and if it is zero or negative,
disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-inline-completion-company-integration-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "lsp-inline-completion" '("lsp-"))


;;; Generated autoloads from lsp-javascript.el

(register-definition-prefixes "lsp-javascript" '("lsp-"))


;;; Generated autoloads from lsp-jq.el

(register-definition-prefixes "lsp-jq" '("lsp-clients-jq-server-executable"))


;;; Generated autoloads from lsp-json.el

(register-definition-prefixes "lsp-json" '("lsp-"))


;;; Generated autoloads from lsp-jsonnet.el

(register-definition-prefixes "lsp-jsonnet" '("lsp-clients-jsonnet-server-"))


;;; Generated autoloads from lsp-kotlin.el

(register-definition-prefixes "lsp-kotlin" '("lsp-"))


;;; Generated autoloads from lsp-kubernetes-helm.el

(register-definition-prefixes "lsp-kubernetes-helm" '("lsp-kubernetes-helm-"))


;;; Generated autoloads from lsp-lens.el

(autoload 'lsp-lens--enable "lsp-lens" "\
Enable lens mode.")
(autoload 'lsp-lens-show "lsp-lens" "\
Display lenses in the buffer." t)
(autoload 'lsp-lens-hide "lsp-lens" "\
Delete all lenses." t)
(autoload 'lsp-lens-mode "lsp-lens" "\
Toggle code-lens overlays.

This is a minor mode.  If called interactively, toggle the `Lsp-Lens
mode' mode.  If the prefix argument is positive, enable the mode, and if
it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-lens-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(autoload 'lsp-avy-lens "lsp-lens" "\
Click lsp lens using `avy' package." t)
(register-definition-prefixes "lsp-lens" '("lsp-"))


;;; Generated autoloads from lsp-lisp.el

(autoload 'lsp-lisp-alive-start-ls "lsp-lisp" "\
Start the alive-lsp." t)
(register-definition-prefixes "lsp-lisp" '("lsp-lisp-a"))


;;; Generated autoloads from lsp-lua.el

(register-definition-prefixes "lsp-lua" '("lsp-"))


;;; Generated autoloads from lsp-magik.el

(register-definition-prefixes "lsp-magik" '("lsp-magik-"))


;;; Generated autoloads from lsp-markdown.el

(register-definition-prefixes "lsp-markdown" '("lsp-markdown-"))


;;; Generated autoloads from lsp-marksman.el

(register-definition-prefixes "lsp-marksman" '("lsp-marksman-"))


;;; Generated autoloads from lsp-matlab.el

(register-definition-prefixes "lsp-matlab" '("lsp-clients-matlab-" "matlabls-command"))


;;; Generated autoloads from lsp-mdx.el

(register-definition-prefixes "lsp-mdx" '("lsp-mdx-server-command"))


;;; Generated autoloads from lsp-meson.el

(register-definition-prefixes "lsp-meson" '("lsp-meson-"))


;;; Generated autoloads from lsp-mint.el

(register-definition-prefixes "lsp-mint" '("lsp-clients-mint-executable"))


;;; Generated autoloads from lsp-mode.el

(put 'lsp-enable-file-watchers 'safe-local-variable #'booleanp)
(put 'lsp-file-watch-ignored-directories 'safe-local-variable 'lsp--string-listp)
(put 'lsp-file-watch-ignored-files 'safe-local-variable 'lsp--string-listp)
(put 'lsp-file-watch-threshold 'safe-local-variable (lambda (i) (or (numberp i) (not i))))
(autoload 'lsp--string-listp "lsp-mode" "\
Return t if all elements of SEQUENCE are strings, else nil.

(fn SEQUENCE)")
(autoload 'lsp-load-vscode-workspace "lsp-mode" "\
Load vscode workspace from FILE

(fn FILE)" t)
(autoload 'lsp-save-vscode-workspace "lsp-mode" "\
Save vscode workspace to FILE

(fn FILE)" t)
(autoload 'lsp-install-server "lsp-mode" "\
Interactively install or re-install server.
When prefix UPDATE? is t force installation even if the server is present.

(fn UPDATE? &optional SERVER-ID)" t)
(autoload 'lsp-uninstall-server "lsp-mode" "\
Delete a LSP server from `lsp-server-install-dir'.

(fn DIR)" t)
(autoload 'lsp-uninstall-servers "lsp-mode" "\
Uninstall all installed servers." t)
(autoload 'lsp-update-server "lsp-mode" "\
Interactively update (reinstall) a server.

(fn &optional SERVER-ID)" t)
(autoload 'lsp-update-servers "lsp-mode" "\
Update (reinstall) all installed servers." t)
(autoload 'lsp-ensure-server "lsp-mode" "\
Ensure server SERVER-ID

(fn SERVER-ID)")
(autoload 'lsp "lsp-mode" "\
Entry point for the server startup.
When ARG is t the lsp mode will start new language server even if
there is language server which can handle current language. When
ARG is nil current file will be opened in multi folder language
server if there is such. When `lsp' is called with prefix
argument ask the user to select which language server to start.

(fn &optional ARG)" t)
(autoload 'lsp-deferred "lsp-mode" "\
Entry point that defers server startup until buffer is visible.
`lsp-deferred' will wait until the buffer is visible before invoking `lsp'.
This avoids overloading the server with many files when starting Emacs.")
(autoload 'lsp-start-plain "lsp-mode" "\
Start `lsp-mode' using minimal configuration using the latest `melpa' version
of the packages.

In case the major-mode that you are using for " t)
(register-definition-prefixes "lsp-mode" '("defcustom-lsp" "lsp-" "make-lsp-client" "when-lsp-workspace" "with-lsp-workspace"))


;;; Generated autoloads from lsp-modeline.el

(define-obsolete-variable-alias 'lsp-diagnostics-modeline-scope 'lsp-modeline-diagnostics-scope "\
lsp-mode 7.0.1")
(autoload 'lsp-modeline-code-actions-mode "lsp-modeline" "\
Toggle code actions on modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Code-Actions mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-modeline-code-actions-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(define-obsolete-function-alias 'lsp-diagnostics-modeline-mode 'lsp-modeline-diagnostics-mode "lsp-mode 7.0.1")
(autoload 'lsp-modeline-diagnostics-mode "lsp-modeline" "\
Toggle diagnostics modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Diagnostics mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-modeline-diagnostics-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(autoload 'lsp-modeline-workspace-status-mode "lsp-modeline" "\
Toggle workspace status on modeline.

This is a minor mode.  If called interactively, toggle the
`Lsp-Modeline-Workspace-Status mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable the
mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-modeline-workspace-status-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "lsp-modeline" '("lsp-"))


;;; Generated autoloads from lsp-mojo.el

(register-definition-prefixes "lsp-mojo" '("lsp-mojo-executable"))


;;; Generated autoloads from lsp-move.el

(register-definition-prefixes "lsp-move" '("lsp-clients-"))


;;; Generated autoloads from lsp-nextflow.el

(register-definition-prefixes "lsp-nextflow" '("lsp-nextflow-"))


;;; Generated autoloads from lsp-nginx.el

(register-definition-prefixes "lsp-nginx" '("lsp-nginx-"))


;;; Generated autoloads from lsp-nim.el

(register-definition-prefixes "lsp-nim" '("lsp-nim-l"))


;;; Generated autoloads from lsp-nix.el

(register-definition-prefixes "lsp-nix" '("lsp-nix-"))


;;; Generated autoloads from lsp-nushell.el

(register-definition-prefixes "lsp-nushell" '("lsp-nushell-language-server-command"))


;;; Generated autoloads from lsp-ocaml.el

(register-definition-prefixes "lsp-ocaml" '("lsp-"))


;;; Generated autoloads from lsp-odin.el

(register-definition-prefixes "lsp-odin" '("lsp-odin-"))


;;; Generated autoloads from lsp-openscad.el

(register-definition-prefixes "lsp-openscad" '("lsp-openscad-"))


;;; Generated autoloads from lsp-perl.el

(register-definition-prefixes "lsp-perl" '("lsp-perl-"))


;;; Generated autoloads from lsp-perlnavigator.el

(register-definition-prefixes "lsp-perlnavigator" '("lsp-perlnavigator-"))


;;; Generated autoloads from lsp-php.el

(register-definition-prefixes "lsp-php" '("lsp-"))


;;; Generated autoloads from lsp-pls.el

(register-definition-prefixes "lsp-pls" '("lsp-pls-"))


;;; Generated autoloads from lsp-postgres.el

(register-definition-prefixes "lsp-postgres" '("lsp-postgres-"))


;;; Generated autoloads from lsp-prolog.el

(register-definition-prefixes "lsp-prolog" '("lsp-prolog-server-command"))


;;; Generated autoloads from lsp-protocol.el

(register-definition-prefixes "lsp-protocol" '("dash-expand:&RangeToPoint" "lsp"))


;;; Generated autoloads from lsp-purescript.el

(register-definition-prefixes "lsp-purescript" '("lsp-purescript-"))


;;; Generated autoloads from lsp-pwsh.el

(register-definition-prefixes "lsp-pwsh" '("lsp-pwsh-"))


;;; Generated autoloads from lsp-pyls.el

(register-definition-prefixes "lsp-pyls" '("lsp-"))


;;; Generated autoloads from lsp-pylsp.el

(register-definition-prefixes "lsp-pylsp" '("lsp-"))


;;; Generated autoloads from lsp-python-ty.el

(register-definition-prefixes "lsp-python-ty" '("lsp-python-ty-clients-server-command"))


;;; Generated autoloads from lsp-qml.el

(register-definition-prefixes "lsp-qml" '("lsp-qml-server-command"))


;;; Generated autoloads from lsp-r.el

(register-definition-prefixes "lsp-r" '("lsp-clients-r-server-command"))


;;; Generated autoloads from lsp-racket.el

(register-definition-prefixes "lsp-racket" '("lsp-racket-lang"))


;;; Generated autoloads from lsp-remark.el

(register-definition-prefixes "lsp-remark" '("lsp-remark-server-command"))


;;; Generated autoloads from lsp-rf.el

(register-definition-prefixes "lsp-rf" '("expand-start-command" "lsp-rf-language-server-" "parse-rf-language-server-"))


;;; Generated autoloads from lsp-roslyn.el

(register-definition-prefixes "lsp-roslyn" '("lsp-roslyn-"))


;;; Generated autoloads from lsp-rpm-spec.el

(register-definition-prefixes "lsp-rpm-spec" '("lsp-rpm-spec-"))


;;; Generated autoloads from lsp-rubocop.el

(register-definition-prefixes "lsp-rubocop" '("lsp-rubocop-"))


;;; Generated autoloads from lsp-ruby-lsp.el

(register-definition-prefixes "lsp-ruby-lsp" '("lsp-ruby-lsp-"))


;;; Generated autoloads from lsp-ruby-syntax-tree.el

(register-definition-prefixes "lsp-ruby-syntax-tree" '("lsp-ruby-syntax-tree-"))


;;; Generated autoloads from lsp-ruff.el

(register-definition-prefixes "lsp-ruff" '("lsp-ruff-"))


;;; Generated autoloads from lsp-rust.el

(register-definition-prefixes "lsp-rust" '("lsp-"))


;;; Generated autoloads from lsp-semantic-tokens.el

(defvar-local semantic-token-modifier-cache (make-hash-table) "\
A cache of modifier values to the selected fonts.
This allows whole-bitmap lookup instead of checking each bit. The
expectation is that usage of modifiers will tend to cluster, so
we will not have the full range of possible usages, hence a
tractable hash map.

This is set as buffer-local. It should probably be shared in a
given workspace/language-server combination.

This cache should be flushed every time any modifier
configuration changes.")
(autoload 'lsp--semantic-tokens-initialize-buffer "lsp-semantic-tokens" "\
Initialize the buffer for semantic tokens.
IS-RANGE-PROVIDER is non-nil when server supports range requests.")
(autoload 'lsp--semantic-tokens-initialize-workspace "lsp-semantic-tokens" "\
Initialize semantic tokens for WORKSPACE.

(fn WORKSPACE)")
(autoload 'lsp-semantic-tokens--warn-about-deprecated-setting "lsp-semantic-tokens" "\
Warn about deprecated semantic highlighting variable.")
(autoload 'lsp-semantic-tokens--enable "lsp-semantic-tokens" "\
Enable semantic tokens mode.")
(autoload 'lsp-semantic-tokens-mode "lsp-semantic-tokens" "\
Toggle semantic-tokens support.

This is a minor mode.  If called interactively, toggle the
`Lsp-Semantic-Tokens mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `lsp-semantic-tokens-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "lsp-semantic-tokens" '("lsp-"))


;;; Generated autoloads from lsp-semgrep.el

(register-definition-prefixes "lsp-semgrep" '("lsp-semgrep-" "semgrep-"))


;;; Generated autoloads from lsp-sml.el

(register-definition-prefixes "lsp-sml" '("lsp-sml-millet-"))


;;; Generated autoloads from lsp-solargraph.el

(register-definition-prefixes "lsp-solargraph" '("lsp-solargraph-"))


;;; Generated autoloads from lsp-solidity.el

(register-definition-prefixes "lsp-solidity" '("lsp-client--solidity-"))


;;; Generated autoloads from lsp-sorbet.el

(register-definition-prefixes "lsp-sorbet" '("lsp-sorbet-"))


;;; Generated autoloads from lsp-sql.el

(register-definition-prefixes "lsp-sql" '("lsp-sql-"))


;;; Generated autoloads from lsp-sqls.el

(register-definition-prefixes "lsp-sqls" '("lsp-sql"))


;;; Generated autoloads from lsp-steep.el

(register-definition-prefixes "lsp-steep" '("lsp-steep-"))


;;; Generated autoloads from lsp-svelte.el

(register-definition-prefixes "lsp-svelte" '("lsp-svelte-plugin-"))


;;; Generated autoloads from lsp-terraform.el

(register-definition-prefixes "lsp-terraform" '("construct-tf-package" "lsp-t"))


;;; Generated autoloads from lsp-tex.el

(register-definition-prefixes "lsp-tex" '("lsp-"))


;;; Generated autoloads from lsp-toml.el

(register-definition-prefixes "lsp-toml" '("lsp-toml-"))


;;; Generated autoloads from lsp-toml-tombi.el

(register-definition-prefixes "lsp-toml-tombi" '("lsp-tombi-toml-"))


;;; Generated autoloads from lsp-trunk.el

(register-definition-prefixes "lsp-trunk" '("lsp-trunk-"))


;;; Generated autoloads from lsp-ts-query.el

(register-definition-prefixes "lsp-ts-query" '("lsp-ts-query-"))


;;; Generated autoloads from lsp-ttcn3.el

(register-definition-prefixes "lsp-ttcn3" '("lsp-ttcn3-lsp-server-command"))


;;; Generated autoloads from lsp-typeprof.el

(register-definition-prefixes "lsp-typeprof" '("lsp-typeprof-"))


;;; Generated autoloads from lsp-typespec.el

(register-definition-prefixes "lsp-typespec" '("lsp-typespec-"))


;;; Generated autoloads from lsp-v.el

(register-definition-prefixes "lsp-v" '("lsp-v-"))


;;; Generated autoloads from lsp-vala.el

(register-definition-prefixes "lsp-vala" '("lsp-clients-vala-ls-executable"))


;;; Generated autoloads from lsp-verilog.el

(register-definition-prefixes "lsp-verilog" '("lsp-clients-"))


;;; Generated autoloads from lsp-vetur.el

(register-definition-prefixes "lsp-vetur" '("lsp-vetur-"))


;;; Generated autoloads from lsp-vhdl.el

(register-definition-prefixes "lsp-vhdl" '("ghdl-ls-bin-name" "hdl-checker-bin-name" "lsp-vhdl-" "vhdl-"))


;;; Generated autoloads from lsp-vimscript.el

(register-definition-prefixes "lsp-vimscript" '("lsp-clients-vim-"))


;;; Generated autoloads from lsp-volar.el

(register-definition-prefixes "lsp-volar" '("lsp-volar-"))


;;; Generated autoloads from lsp-wgsl.el

(register-definition-prefixes "lsp-wgsl" '("lsp-wgsl-"))


;;; Generated autoloads from lsp-xml.el

(register-definition-prefixes "lsp-xml" '("lsp-xml-"))


;;; Generated autoloads from lsp-yaml.el

(register-definition-prefixes "lsp-yaml" '("lsp-"))


;;; Generated autoloads from lsp-yang.el

(register-definition-prefixes "lsp-yang" '("lsp-yang-"))


;;; Generated autoloads from lsp-zig.el

(register-definition-prefixes "lsp-zig" '("lsp-z"))

;;; End of scraped data

(provide 'lsp-mode-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; lsp-mode-autoloads.el ends here
