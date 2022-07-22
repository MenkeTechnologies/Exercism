(defpackage :nucleotide-count
  (:use :cl)
  (:export :dna-count :nucleotide-counts :invalid-nucleotide))

(in-package :nucleotide-count)

(define-condition invalid-nucleotide (condition) ())

(defun dna-count (nt strand)
  (if (member nt '(#\A #\T #\G #\C))
      (count nt strand)
      (signal 'invalid-nucleotide)))

(defun nucleotide-counts (strand)
  (let ((new-hash (make-hash-table)))
        (loop for nt in '(#\A #\T #\G #\C)
              do (setf (gethash nt new-hash) (dna-count nt strand))
              finally (return new-hash))))
