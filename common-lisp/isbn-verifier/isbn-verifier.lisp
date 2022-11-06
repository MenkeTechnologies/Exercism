(defpackage :isbn-verifier
  (:use :cl)
  (:export :validp))

(in-package :isbn-verifier)

(defun validp (isbn)
  (let ((digits
          (loop for c across isbn
                for d = (cond ((digit-char-p c) (- (char-code c) (char-code #\0)))
                              ((and (= (length digits) 9) (char-equal c #\X)) 10)
                              ((char= c #\-) nil)
                              (t (return-from validp)))
                if d collect it into digits
                finally (return digits))))
    (when (= (length digits) 10)
      (let ((sum (loop for d in digits
                       for i downfrom 10
                       sum (* d i))))
        (zerop (rem sum 11))))))

