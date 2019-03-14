#lang racket

;;; recursive

(define (factorial n)
  (if (= n 1)
    1
    (* (factorial (- n 1)) n)))


(factorial 5)

;;; different
;;; iteration

(define (factorial-new n)
  (factorial-iter 1 1 n))

(define (factorial-iter product counter max-count)
(if (> counter max-count)
  product
  (factorial-iter (* counter product) (+ counter 1) max-count)))

(factorial-new 5)