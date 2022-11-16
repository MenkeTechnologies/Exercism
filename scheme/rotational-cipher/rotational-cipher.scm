(import (rnrs))

(define (rotate s amt)
  (string-map (lambda (c)
                (cond
                 ((char<=? #\a c #\z)
                  (integer->char (+ (char->integer #\a)
                                    (modulo (+ (- (char->integer c)
                                                  (char->integer #\a))
                                               amt)
                                            26))))
                 ((char<=? #\A c #\Z)
                  (integer->char (+ (char->integer #\A)
                                    (modulo (+ (- (char->integer c)
                                                  (char->integer #\A))
                                               amt)
                                            26))))
                 (#t
                  c)))
              s))

