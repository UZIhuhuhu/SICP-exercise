#lang racket

(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
    a
    (lambda (x) (+ x 4))
    b))

(define (f x y)
  (lambda (a b) (+ (* x (square a)) (* y b) (* a b)))
  ((+ 1 (* x y)) (- 1 y)))

