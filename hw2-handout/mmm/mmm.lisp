; You may define helper functions here

(defun s (xs)
    (cond 
      ((null xs) nil)
      ((null (cdr xs))(car xs))
      ((< (car xs) (car(cdr xs))) (s (cons (car xs) (cdr(cdr xs)))))
	(t (s (cdr xs))))
)

(defun l (xs)
  (cond 
    ((null xs) nil)
    ((null (cdr xs))(car xs))
    ((> (car xs) (car(cdr xs))) (l (cons (car xs) (cdr(cdr xs)))))
    (t (l (cdr xs))))
)

(defun sum (xs)
  (cond
    ((null xs) nil)
    ((null (cdr xs))
      (car xs))
    (t
      (+ (car xs) (sum (cdr xs))))))

(defun leng (xs)
  (if (null xs) 0
    (+ 1 (leng (cdr xs)))))

(defun m (xs)
  (setq total (sum xs))
  (setq num (leng xs))
    (/ total num))

(defun min-mean-max (xs)
	(setq s (s xs))
	(setq m (m xs))
	(setq l (l xs))
	  (list s m l))
	
