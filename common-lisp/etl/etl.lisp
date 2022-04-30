(defpackage :etl
  (:use :cl)
  (:export :transform))

(in-package :etl)

(defun transform (data)
  "Transforms hash values into keys with their keys as their values."
  (let ((scores (make-hash-table)))
   (maphash #'(lambda (s letters)
               (dolist (l letters)
                (setf (gethash (char-downcase l) scores) s)))
    data)
   scores
   )
  )
