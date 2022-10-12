(require 'seq)

(defun trinary-to-decimal (s)
  (if (string-match "[^0-2]" s)
    0
    (seq-reduce #'(lambda (acc n) (+ (* acc 3) n))
                (mapcar #'(lambda (c) (- c ?0)) s)
                0)))

(provide 'trinary)
