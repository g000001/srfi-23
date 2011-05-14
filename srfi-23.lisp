;;;; srfi-23.lisp

(cl:in-package :srfi-23-internal)

(def-suite srfi-23)

(in-suite srfi-23)

(defun error (reason &rest args)
  (cl:error "Error: ~A ~{~S ~^~}~%" reason args))
