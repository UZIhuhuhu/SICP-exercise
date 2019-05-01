#lang racket

(define (accumulte combiner null-value term a next b)
  (if (> a b) null-value
    (combiner (term a) (accumulte combiner null-value term (next a) next b))))

(define (filter-accumulate combiner null-value term a next b filter)
  (if (> a b) null-value
    (if (filter a)
      (combiner (term a) (filter-accumulate combiner null-value term (next a) next b filter))
      (combiner (term null-value) (filter-accumulate combiner null-value term (next a) next b filter)))))


