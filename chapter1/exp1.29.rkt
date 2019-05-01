#lang racket

(define (cube x) (* x x x))

(define (inc x) (+ x 1))

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))

(define (simpson-rule f a b n)
  (define h (/ (- b a) n))
  (define (yk k) (f (+ a (* k h))))
  (define (simpson-term k) 
     (* (cond ((or (= k 0) (= k n)) 1) 
              ((odd? k) 4) 
              (else 2)) 
        (yk k)))
  (* (/ h 3) (simpson-rule simpson-term 0 inc n)))

(simpson-rule cube 0 1 100)
(simpson-rule cube 0 1 1000)