#lang racket

(provide format-message)

(define (suffix n)
  (let ([units (remainder n 10)]
        [tens (remainder n 100)])
    (cond
      [(= units 1) (if (= tens 11) "th" "st")]
      [(= units 2) (if (= tens 12) "th" "nd")]
      [(= units 3) (if (= tens 13) "th" "rd")]
      [else "th"])))

(define (format-message s n)
  (format "~a, you are the ~a~a customer we serve today. Thank you!" s n (suffix n)))
