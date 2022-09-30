(import (rnrs))

(define (middle a b)
        (floor (/ (+ a b) 2)))

(define (binary-search ary target)
        (define (aux lo hi)
                (let ((mid (middle lo hi)))
                     (cond
                           ((>= lo hi) 'not-found)
                           ((= (vector-ref ary mid) target) mid)
                           ((< target (vector-ref ary mid)) (aux lo mid))
                           (#t (aux (+ 1 mid) hi)))))
        (aux 0 (vector-length ary)))
