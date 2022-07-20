(define (accumulate f xs)
  (cond
   ((null? xs) xs)
   (else (cons (f (car xs)) (accumulate f (cdr xs))))))
