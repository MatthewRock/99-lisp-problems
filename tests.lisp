(in-package :cl-user)

(defpackage :99problems/test
  (:use :cl :fiveam :99problems)
  (:export run-tests))

(in-package :99problems/test)

(defun run-tests ()
  (run! '99problems-suite))

(def-suite 99problems-suite
    :description "Tests for 99 lisp problems")

(in-suite 99problems-suite)

(test problem1
  (is (= (p01 '(1 2 3 4 5)) 5))
  (is (equal (p01 '(a b c d)) 'd))
  (is (equal (p01 nil) nil)))
