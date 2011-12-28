;;;; srfi-23.lisp

(cl:in-package :srfi-23-internal)

(defun error (reason &rest args)
  (cl:error "Error: ~A ~{~S ~^~}~%" reason args))
