#lang racket

;;; (define (* a b)
;;;   (if (= b 0)
;;;     0
;;;     (+ a (* a (- b 1)))))

;;; (* 2 3)

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))))

(fast-mult 12 5)
