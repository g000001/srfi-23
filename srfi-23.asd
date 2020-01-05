;;;; srfi-23.asd

(cl:in-package :asdf)

(defsystem :srfi-23
  :version "20200106"
  :description "SRFI 23: Error reporting mechanism"
  :long-description "SRFI 23: Error reporting mechanism
https://srfi.schemers.org/srfi-23"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :license "Unlicense"
  :serial t
  :components ((:file "package")
               (:file "srfi-23")))

(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-23))))
  (let ((name "https://github.com/g000001/srfi-23")
        (nickname :srfi-23))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))

;;; eof
