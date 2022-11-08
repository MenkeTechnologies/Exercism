(defpackage :matching-brackets
  (:use :cl)
  (:export :pairedp))

(in-package :matching-brackets)

(defun opening (char)
  (case char
    (#\{ #\})
    (#\[ #\])
    (#\( #\))))

(defun pairedp (value)
  (let ((stk '())
        (closing '(#\} #\] #\)))
        (valid T))
       (loop :for i :from 0 :to (- (length value) 1)
             :do (if (opening (aref value i))
                     (push (aref value i) stk)
                     (when (member (aref value i) closing)
                       (when (or (= (length stk) 0) (not (equal (aref value i) (opening (pop stk)))))
                         (setq valid NIL)))))
       (and valid (= (length stk) 0))))
