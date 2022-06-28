(defmodule rna-transcription
    (export (to-rna 1)))

(defun to-rna (rna)
    (lists:map #'to-rna-inner/1 rna))

(defun to-rna-inner
    ((#\G) #\C)
    ((#\C) #\G)
    ((#\T) #\A)
    ((#\A) #\U))
