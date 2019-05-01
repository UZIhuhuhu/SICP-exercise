#lang racket

(define (exp base n)
  (define (iter x result)
    (if (= x 0)
      result
      (iter (- x 1) (* base result))))
  (iter n 1))

(define (divides? a b)
  (= 0 (remainder b a)))

(define (division n divisor)
  (define (iter x divisions)
    (if (divides? divisor x)
      (iter (/ x divisor) (+ divisions 1))
      division))
  (iter n 0))

(define (cons x y) (* (exp 2 a) (exp 3 b)))

(define (car p) (division p 2))

(define (cdr p) (division p 3))