#lang racket

(define (cont-frac n d k)
  (define (loop result temp)
    (if (= temp 0)
      result
      loop(
        (/ (n temp) (+ (d temp) result))
        (- temp 1)
      )))
  (loop 0 k))


(define (e k)
  (+ 2 (cont-frac
  (lambda (x) 1)
  (lambda (x) ((if (= (remainder x 3) 2)
                  (/ (+ x 1) 1.5)
                  1)))
  k)))

