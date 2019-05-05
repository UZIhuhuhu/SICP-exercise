(define (cont-frac n d k)
  (define (loop result temp)
    (if (= temp 0)
      result
      loop(
        (/ (n temp) (+ (d temp) result))
        (- temp 1)
      )))
  (loop 0 k))


(define (cont-frac n d k)
  (if (= k 0)
    0
    (/ (n k) (+ (d k) (cont-frac n d (- k 1))))))