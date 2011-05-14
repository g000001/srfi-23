;;;; srfi-23.asd

(cl:in-package :asdf)

(defsystem :srfi-23
  :serial t
  :components ((:file "package")
               (:file "srfi-23")))

(defmethod perform ((o test-op) (c (eql (find-system :srfi-23))))
  (load-system :srfi-23)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :srfi-23-internal :srfi-23))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

