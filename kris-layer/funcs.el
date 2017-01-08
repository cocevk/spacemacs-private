;; My functions
(defun korg-open-dir ()
  "Opens the org dir"
  (interactive)
  (find-file "~/Dropbox/org/")
  )
(defun korg-open-refile ()
  "Open the org refile"
  (interactive)
  (find-file "~/Dropbox/org/refile.org")
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
(defun korg-open-halcom ()
  "Open the org halcom"
  (interactive)
  (find-file "~/Dropbox/org/halcom.org")
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
(setq org-default-notes-file "~/Dropbox/org/refile.org")
(setq org-todo-keywords
      '((sequence "TODO" "IN_PROGRESS" "|" "DONE" )))
(setq org-agenda-files '("~/Dropbox/org"))

(setq org-capture-templates
      '(("r" "Refile" entry (file "~/Dropbox/org/refile.org")
         "** TODO %?\n %i\n %a")
        ("t" "Todo" entry (file+headline "~/Dropbox/org/todo.org" "Tasks")
         "* TODO %?\n %i\n %a")
        ("n" "CS Notes Entry" entry (file+datetree "~/Dropbox/org/notes.org")
         "* %?\nEntered on %U\n %i\n %a")
        ("h" "Halcom Notes Entry" entry (file+datetree "~/Dropbox/org/halcom.org")
         "* %?\nEntered on %U\n %i\n %a")
        )
      )
;; This first element of org-refile-targets decides the heading levels to consider within current file, the second element - within other agenda files.
(setq org-refile-targets
      '((nil :maxlevel . 3)
        (org-agenda-files :maxlevel . 3)))

;; Other stuff
(setq-default evil-escape-key-sequence "jk")
;; Display time in the powerline
(display-time-mode 1)