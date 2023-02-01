(defun match (pattern assertion)
  (cond
    ((and (null pattern) (null assertion)) t) 
    ((or (null pattern) (null assertion)) nil)
	((or (eql (car pattern) (car assertion))) (eql (car pattern) '*) (match (cdr pattern) (cdr assertion)))
    ((eql (car pattern) '!)	(or (match pattern (cdr assertion)) (match (cdr pattern) (cdr assertion))))

    ((eql (car assertion) (car pattern))  
     (cond 
       ((and (eql (car(cdr pattern)) '!) (not (null (car(cdr(cdr pattern))))))(match (cdr(cdr pattern)) (cdr assertion)))
       (t (match (cdr pattern) (cdr assertion)))))
    (t nil)))


