#lang racket

(provide make-robot
         name
         reset!
         reset-name-cache!)

(define dict (make-hash))

(struct Robot (name))

(define (random-letter)
  (integer->char (+ (random 0 26)
                    (char->integer #\A))))

(define (random-digit)
  (integer->char (+ (random 0 10)
                    (char->integer #\0))))

(define (random-robot-name)
  (string (random-letter)
          (random-letter)
          (random-digit)
          (random-digit)
          (random-digit)))

(define (make-robot)
  (let ([robot-name (random-robot-name)])
    (if (hash-has-key? dict robot-name)
        (make-robot)
        (begin0
            (Robot robot-name)
          (hash-set! dict robot-name #t)))))

(define (name robot)
  (Robot-name robot))

(define (reset! robot)
  (hash-remove! dict (Robot-name robot))
  (make-robot))

(define (reset-name-cache!)
  (hash-clear! dict))
