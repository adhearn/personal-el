;; Automatically turn on ido-mode
(require 'ido)
(ido-mode t)

(require 'smartparens-config)

(require 'journal "~/elisp/journal-el/journal.el")
(require 'journal-cat "~/elisp/journal-el/journal-cat.el")

(defun todo ()
  "Open our todo file"
  (interactive)
  (switch-to-buffer (find-file "~/Dropbox/exobrain/todo.org")))

(defun gtd ()
  "Open our todo file"
  (interactive)
  (switch-to-buffer (find-file "~/Dropbox/exobrain/gtd.org")))

;; Turn off long line syntax highlighting
;; In a perfect world, this would only happen in text files
;; (Or when visual-line-mode were enabled)
;; Alas, whitespace-mode doesn't allow that (yet!)
(setq whitespace-style
      '(face tabs empty trailing))

;; org=mode keybindings (should be set by prelude, not sure what's up with that not working)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-agenda-files (list "~/Dropbox/exobrain/gtd.org"))
