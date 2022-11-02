(defpackage :beer-song
  (:use :cl)
  (:export :verse :sing))

(in-package :beer-song)

(defun verse (n)
  (concatenate 'string
               (format nil "~[No more~:;~a~] bottle~:p of beer on the wall, ~[no more~:;~a~] bottle~:p of beer.~%" n n n n)
               (cond ((> n 0)
                      (format nil "Take ~[~;it~:;one~] down and pass it around, ~[no more~:;~a~] bottle~:p of beer on the wall.~%" n (1- n) (1- n)))
                     ((= n 0)
                      (format nil "Go to the store and buy some more, 99 bottles of beer on the wall.~%")))))

(defun sing (start &optional (end 0))
  (format nil "~{~a~%~}"
          (loop for x from start downto end collect (verse x))))
