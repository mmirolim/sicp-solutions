;; improve recursive number multiplication by additing
;; with double and halve procedures
(define (* a b)
  (cond ((= b 0) 0)
	((even b) (double (* a (halve b))))
	(else (+ a (* a (- b 1))))))
(define (halve n) (/ n 2))
(define (even n)
  (= (remainder n 2) 0))
(define (double a) (+ a a))
