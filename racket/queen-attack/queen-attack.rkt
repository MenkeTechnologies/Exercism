#lang racket
(provide create-queen
         can-attack?)

(define (create-queen row col)
  (if (or (negative? row) (negative? col) (> row 7) (> col 7))
    (error "invalid coordinates")
    (cons row col)))

(define (can-attack? white-queen black-queen)
  (if (equal? white-queen black-queen)
    (error "both queens on the same square")
    (let ([dx (abs (- (car white-queen) (car black-queen)))]
          [dy (abs (- (cdr white-queen) (cdr black-queen)))])
          (or (zero? dx) (zero? dy) (= dx dy)))))
