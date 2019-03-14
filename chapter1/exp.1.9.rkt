#lang planet neil/sicp

(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

(+ 4 5)


;;; (plus 3 5)
;;; (inc (plus 2 5))
;;; (inc (inc (plus 1 5)))
;;; (inc (inc (inc (plus 0 5))))
;;; (inc (inc (inc 5)))
;;; (inc (inc 6))
;;; (inc 7)
;;; 8

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

;;; (plus 3 5)
;;; (plus 2 6)
;;; (plus 1 7)
;;; (plus 0 8)
;;; 8