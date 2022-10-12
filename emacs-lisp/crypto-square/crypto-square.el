(require 'cl)
(require 'subr-x)
(require 'seq)

(defun encipher (s)
  (if (zerop (length s)) ""
    (let* ((normalized (replace-regexp-in-string "[^[:alnum:]]" "" (downcase s)))
           (size (ceiling (sqrt (length normalized))))
           (fmt (format "%%-%ds" size)))
      (string-join (thread-last (seq-partition normalized size)
                     (mapcar #'(lambda (chunk) (format fmt chunk)))
                     (apply #'cl-mapcar #'string))
                   " "))))

(provide 'crypto-square)
