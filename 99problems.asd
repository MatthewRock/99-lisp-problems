;;;; 99problems.asd

(asdf:defsystem :99problems
  :description "99 lisp problems: http://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html"
  :author "Malice"
  :license "MIT"
  :serial t
  :in-order-to ((test-op (asdf:test-op :99problems/test)))
  :components ((:file "99problems")))

(asdf:defsystem :99problems/test
  :depends-on (:fiveam :99problems)
  :components ((:file "tests"))
  :perform (test-op (o s)
                    (uiop:symbol-call :fiveam '#:run!
                                      (uiop:find-symbol* :99problems-suite
                                                         :99problems/test))))
