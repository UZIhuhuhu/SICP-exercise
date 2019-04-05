#lang racket


(define (fib n)
  (if (< n 3)
    n
    (+ (fib (- n 1)) 
        (* 2 (fib (- n 2)))
        (* 3 (fib (- n 3))))))


(define (fib n)
  (fib-iter 2 1 0 n))

(define (fib-iter a b c count)
  (if (= count 0)
    c
    (fib-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))


(fib 4)