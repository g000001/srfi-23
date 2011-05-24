;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :srfi-23
  (:use)
  (:export :error))

(defpackage :srfi-23-internal
  (:use :srfi-23 :cl :fiveam)
  (:shadowing-import-from :srfi-23
                          :error))

