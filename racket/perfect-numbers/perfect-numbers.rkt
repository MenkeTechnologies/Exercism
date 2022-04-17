#lang racket

(provide classify)

(define (classify n)
  (define (factors-sum sum i)
    (cond [(= i n) sum]
          [(zero? (modulo n i)) (factors-sum (+ sum i) (+ i 1))]
          [else (factors-sum sum (+ i 1))]))
  (let ([sum (factors-sum 0 1)])
    (cond [(= sum n) 'perfect]
          [(> sum n) 'abundant]
          [else 'deficient])
    )

  )

