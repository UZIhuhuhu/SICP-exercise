#lang racket


;;; row:
;;; 0        1
;;; 1       1 1
;;; 2      1 2 1
;;; 3     1 3 3 1
;;; 4    1 4 6 4 1
;;; 5   . . . . . .
;;; col: 0 1 2 3 4

(define (pascal row col)
  (if (> col row)
    (error "unvaild error")
    (if (or (= row col) (= col 0))
      1
      (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))
    )))

;;; test

(pascal 3 2)

(pascal 4 2)

(pascal 4 5)