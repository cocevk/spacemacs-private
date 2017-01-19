;;; packages.el --- kris-layer layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Kris Cočev <kris@KrisMacBook.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `kris-layer-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `kris-layer/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `kris-layer/pre-init-PACKAGE' and/or
;;   `kris-layer/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst kris-layer-packages
  '(
    ;; package personals go here
    ;; emacs-soap-client
    ;; org-jira
    org-alert
    ;; Enable TLS (for ERC secure connection...)
    tls
    )
)

;; TODO: not sure if this is the correct way to init those two...
(defun kris-layer/init-org-alert ()
  (use-package org-alert
    :defer t
    :init
    (with-eval-after-load 'org-alert))
  )
(defun kris-layer/init-tls ()
  (use-package tls
    :defer t
    :init
    (with-eval-after-load 'tls))
  )


;;; packages.el ends here
