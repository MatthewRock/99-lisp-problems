;;;; 99problems.lisp

(defpackage #:99problems
  (:use #:cl)
  (:export p01))


(in-package #:99problems)

;;; "99problems" goes here. Hacks and glory await!

(defun p01 (lst)
  (do ((a lst (cdr a)))
      ((null (cdr a)) (car a))))
