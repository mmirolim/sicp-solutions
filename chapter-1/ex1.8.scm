;; write procedure to find cube-root
(define (cube-root x)
  (iter 1.0 x))

;; iter procedure to loop for an answer
(define (iter guess x)
  (if (good-enough guess x)
      guess
      (iter (improve guess x) x)))

;; improve guess with Newton method
(define (improve guess x)
  (/ (+ (/ x (pow guess 2)) (* 2 guess)) 3))

;; check guess for required precision
(define (good-enough guess x)
  (< (abs (- (pow guess 3) x)) 0.001))

;; pow func for non negative numbers > 0
(define (pow x y)
  (* x (if (> y 1) (pow x (- y 1)) 1)))
