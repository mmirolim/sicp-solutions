;; impl recursive procedure to computes
;; element of Pascal's triangle
(define (el a b)
  (cond ((= b 0) 1)
	((= a b) 1)
	(else (+ (el (- a 1) (- b 1)) (el (- a 1) b)))))
