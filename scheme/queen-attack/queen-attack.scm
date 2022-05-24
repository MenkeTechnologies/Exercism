(import (rnrs))

(define (attacking? white black)
  (let* (
    (x1 (car white))
    (y1 (cadr white))
    (x2 (car black))
    (y2 (cadr black))
    (dx (abs (- x1 x2)))
    (dy (abs (- y1 y2)))
    )
   (cond
    ((= dx dy) #t)
    ((= dx 0) #t)
    ((= dy 0) #t)
    (#t #f)
    )
   )
 )

