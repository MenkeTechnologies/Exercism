(defpackage :protein-translation
  (:use :cl)
  (:export :proteins
           :invalid-protein))

(in-package :protein-translation)

(defvar *DICT*'(
                    ("AUG" . "Methionine")
                    ("UUU" . "Phenylalanine")
                    ("UUC" . "Phenylalanine")
                    ("UUA" . "Leucine")
                    ("UUG" . "Leucine")
                    ("UCU" . "Serine")
                    ("UCC" . "Serine")
                    ("UCA" . "Serine")
                    ("UCG" . "Serine")
                    ("UAU" . "Tyrosine")
                    ("UAC" . "Tyrosine")
                    ("UGU" . "Cysteine")
                    ("UGC" . "Cysteine")
                    ("UGG" . "Tryptophan")
                    ("UAA" . STOP)
                    ("UAG" . STOP)
                    ("UGA" . STOP)))
(define-condition invalid-protein (error)
  ((text :initarg :text :reader text)))

(defun translate-codon (codon)
  (let ((pair (assoc (coerce codon 'string) *DICT* :test #'string=)))
    (if pair
      (cdr pair)
      (error 'invalid-protein))))

(defun proteins (s)
  (loop
    for s-start on (coerce s 'list) by #'cdddr
    for codon = (subseq s-start 0 3) then (subseq s-start 0 (min 3 (length s-start)))
    for protein = (translate-codon codon) then (translate-codon codon)
    until (eq protein 'stop)
    when (not (null protein))
      collect protein))
