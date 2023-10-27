#lang racket

(provide high-scores%)

(define high-scores%
  (class object%
    (init values)
    (super-new)

    (define scores-list values)

    (define/public (scores) scores-list)

    (define/public (latest) (last scores-list))

    (define/public (personal-best) (argmax identity scores-list))

    (define/public (personal-top-three)
      (take (sort scores-list >)
            (min (length scores-list) 3)))))
