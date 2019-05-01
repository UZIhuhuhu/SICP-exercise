#lang racket


(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))


(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))


(define (accumulate combiner null-value term a next b)
  (if (> a b) null-value
    (combiner (term a) (accumulate combiner null-value term a (next a) b))))


(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (accumulate term a next b)
  (accumulate * 1 term a next b))

(define (accumulate combiner null-value term a next b)
  (define (iter a res)
    (if (> a res) res
      (iter (next a) (combiner res (term a)))))
  (iter a null-value))


  