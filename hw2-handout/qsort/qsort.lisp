; You may define helper functions here

(defun pivot (n xs)
  (setq s (pivots n xs))
  (setq l (pivotl n xs))
	(list s l)
)

(defun pivots (n xs)
  (cond
    ((null n) nil)
    ((null xs) nil)
    ((<= n (car xs)) (pivots n (cdr xs)))
    (t
      (cons (car xs) (pivots n (cdr xs))))))

(defun pivotl (n xs)
	(cond
	  ((null n) nil)
	  ((null xs) nil)
	  ((> n (car xs)) (pivotl n (cdr xs)))
	  (t
	    (cons (car xs) (pivotl n (cdr xs))))))

(defun quicksort(xs))
