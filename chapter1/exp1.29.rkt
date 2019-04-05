#lang racket

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))

(define (simpson-rule f a b n)
  (define (format x) ))