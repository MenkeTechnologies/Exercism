(provide 'allergies)

(require 'seq)

(defvar allergen-names '("eggs"
                         "peanuts"
                         "shellfish"
                         "strawberries"
                         "tomatoes"
                         "chocolate"
                         "pollen"
                         "cats"))

(defun allergen-list (mask)
 (seq-filter (lambda (a) (allergic-to-p mask a)) allergen-names))

(defun allergic-to-p (mask a)
 (< 0 (logand mask (expt 2 (seq-position allergen-names a))))
 )
