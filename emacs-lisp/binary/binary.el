(provide 'binary)

(defun to-decimal (s)
  (condition-case nil
      (cl-reduce (lambda (i c)
                   (if (<= ?0 c ?1)
                       (+ (* 2 i) (- c ?0))
                     (signal 'error c)))
                 s
                 :initial-value 0)
    (error 0)))
