#lang racket

(define (indentity x) x)

(define (inc x) (+ x 1))

(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))

(define (factorial n)
  (product indentity 1 inc n))

(factorial 3)

(define (pi-item x)
  (if (even? x)
    (/ (+ x 2) (+ x 1))
    (/ (+ x 1) (+ x 2))))

(define (pi-result n)
  (* (product pi-item 1 inc n) 4))

(pi-result 100)

(define (product term a next b)
  (define (iter a res)
    (if (> a b) res
      (iter (next a) (* (term a) res))))
  (iter a 1))

(define (pi-result n)
  (* (product pi-item 1 inc n) 4))

(pi-result 100)