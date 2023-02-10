(defun n-to-radix (val radix acc)
  (if (zerop val)
      acc
    (n-to-radix (/ val radix) radix (cons (mod val radix) acc))))

(defun rebase (list-of-digits in-base out-base)
  (cond ((or (< in-base 2) (< out-base 2)
             (seq-some (lambda (d) (or (< d 0) (>= d in-base))) list-of-digits)) (error "invalid input"))
        ((= 0 (apply #'+ list-of-digits)) '(0))
        (t (n-to-radix (seq-reduce #'(lambda (acc n) (+ (* acc in-base) n)) list-of-digits 0) out-base nil))))
