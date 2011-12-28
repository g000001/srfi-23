;;;; srfi-23.asd

(cl:in-package :asdf)

(defsystem :srfi-23
  :serial t
  :components ((:file "package")
               (:file "srfi-23")))
;;; eof
