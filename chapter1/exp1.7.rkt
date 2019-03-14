#lang racket

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt n)
  (define (good-enough? n guess)
    (<= (abs (- (improve-it n guess) guess)) 0.000001))
  (define (improve-it n guess)
    (average guess (/ n guess)))
  (define (sqrt-iter n guess)
    (if (good-enough? n guess)
      guess
      (sqrt-iter n (improve-it n guess))))
  (sqrt-iter n 1.0))

(sqrt 999999999999999)