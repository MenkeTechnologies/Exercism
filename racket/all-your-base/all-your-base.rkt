#lang racket

(provide rebase)

(define (rebase list-digits input-base output-base)
  (cond
    [(or (< input-base 2) (< output-base 2)) #f]
    [(not (for/and ([n list-digits])
            (< -1 n input-base))) #f]
    [else (to-output-base (from-input-base list-digits input-base) output-base)]))

(define (from-input-base list-digits input-base)
  (foldl (lambda (digit acc) (+ (* acc input-base) digit))
         0
         list-digits))

(define (to-output-base base10 output-base)
  (if (zero? base10)
      '(0)
      (let loop ([digits '()]
                 [sum base10])
        (if (zero? sum)
            digits
            (call-with-values (lambda () (quotient/remainder sum output-base))
                              (lambda (q r) (loop (cons r digits) q)))))))

