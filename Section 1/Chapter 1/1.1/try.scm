;; Calculate square root with Newton's method
(define (sqrt x)
  (sqrt-iter 1.0 x))

;; Main procuder to iterator for Newton's method
(define (sqrt-iter guess x)
  (if (good-enough guess x)
      guess
      (sqrt-iter (improve guess x) x)))

;; define good-enough procuder to check does
;; precision is enough
(define (good-enough guess x)
  (< (abs (- (sq guess) x)) 0.001))

;; define abs and sq procuders
(define (abs x)
  (if (< x 0) (- x) x))

(define (sq x) (* x x))

;; define improve procedure to get next guess
(define (improve guess x)
  (average guess (/ x guess)))

;; define average procedure
(define (average x y)
  (/ (+ x y) 2))
