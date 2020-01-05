;;;; package.lisp

(cl:in-package cl-user)

(defpackage "https://github.com/g000001/srfi-23"
  (:use)
  (:export error))

(defpackage "https://github.com/g000001/srfi-23#internals"
  (:use "https://github.com/g000001/srfi-23" cl)
  (:shadowing-import-from "https://github.com/g000001/srfi-23"
                          error))
