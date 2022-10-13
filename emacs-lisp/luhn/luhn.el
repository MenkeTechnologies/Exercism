(provide 'luhn)

(require 'cl-lib)

(defun luhn-p (card-number)
  (let ((nows (nreverse (replace-regexp-in-string
                                        "\s"
                                        ""
                                        card-number)))
        (index 0))
    (if (string-match-p "[^[:digit:]]" nows)
        (error "invalid card number")
      (if (< (length nows) 2)
          nil
        (zerop (%
                (cl-reduce
                 #'+
                 (mapcar (lambda (digit)
                           (let ((num (string-to-number (char-to-string digit))))
                             (cl-incf index)
                             (if (zerop (% index 2))
                                 (if (> (* num 2) 9)
                                     (- (* num 2) 9)
                                   (* num 2))
                               num)))
                         nows))
                10))))))

