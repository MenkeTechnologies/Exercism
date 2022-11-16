(define (digit->integer c)
  (- (char->integer c) (char->integer #\0)))

(define (to-decimal s)
  (let ((digits (map digit->integer (string->list s))))
    (if (for-all (lambda (c) (<= 0 c 7)) digits)
      (fold-left (lambda (acc n) (+ n (* acc 8))) 0 digits)
      0)))

