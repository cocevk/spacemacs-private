;; My functions
(defun korg-open-dir ()
  "Opens the org dir"
  (interactive)
  (find-file "~/Dropbox/org/")
  )
(defun korg-open-inbox ()
  "Open the org refile"
  (interactive)
  (find-file "~/Dropbox/org/inbox.org")
  )
(defun korg-open-notes ()
  "Open the org notes"
  (interactive)
  (find-file "~/Dropbox/org/notes.org")
  )
(defun korg-open-todo ()
  "Open the org todo"
  (interactive)
  (find-file "~/Dropbox/org/todo.org")
  )
(defun korg-open-personal ()
  "Open the org personal"
  (interactive)
  (find-file "~/Dropbox/org/personal.gpg")
  )
(defun korg-open-halcom ()
  "Open the org halcom"
  (interactive)
  (find-file "~/Dropbox/org/halcom.gpg")
  )
(defun kris-edit-keybindings ()
  "Edit keybindings in kris-layer"
  (interactive)
  (find-file "~/.emacs.d/private/kris-layer/keybindings.el")
  )
(defun kris-edit-funcs ()
  "Edit functions in kris-layer"
  (interactive)
  (find-file "~/.emacs.d/private/kris-layer/funcs.el")
  )

(defun korg-archive-done-tasks ()
  "Archive DONE tasks"
  (interactive)
  (org-map-entries 'org-archive-subtree "/DONE" 'file)
  )


;; Org Mode Configuration
(setq org-default-notes-file "~/Dropbox/org/inbox.org")
(setq org-todo-keywords
      '((sequence "TODO" "IN_PROGRESS" "|" "DONE" )))
(setq org-agenda-files '("~/Dropbox/org"))

(setq org-capture-templates
      '(
        ("t" "Todo" entry (file+headline "~/Dropbox/org/todo.org" "Tasks")
         "* TODO %?")
        ("n" "Notes Entry" entry (file+datetree "~/Dropbox/org/notes.org")
         "* %?\nEntered on %U via capture")
        ("h" "Halcom Notes Entry" entry (file+datetree "~/Dropbox/org/halcom.gpg")
         "* %?\nEntered on %U via capture")
        ("i" "Inbox" entry (file+datetree "~/Dropbox/org/inbox.org")
         "* %?\nEntered on %U via capture")
        )
      )
;; This first element of org-refile-targets decides the heading levels to consider within current file, the second element - within other agenda files.
(setq org-refile-targets
      '((nil :maxlevel . 3)
        (org-agenda-files :maxlevel . 2)))
;; End Org Mode Configuration

;; Other stuff
(setq-default evil-escape-key-sequence "jk")
;; Display time in the powerline
(display-time-mode 1)
;; Word wrapping
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
;; Make backspace delete tabs...
(setq backward-delete-char-untabify-method 'hungry)
;; Erc configuration
;; Disable JOIN/PART/QUIT messages in ERC
(setq erc-hide-list '("JOIN" "PART" "QUIT"))
