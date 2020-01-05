;;;; srfi-23.lisp

(cl:in-package "https://github.com/g000001/srfi-23#internals")

(defun error (reason &rest args)
  (cl:error "Error: ~A ~{~S ~^~}~%" reason args))
