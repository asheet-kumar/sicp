#lang scheme

(define (square x)(* x x))
(define li (list 1 2 3 4 5 6))

(map  square li)

(define (filter pred li)
    (cond
      ((null? li) li)
      ((pred (car li)) (cons  (car li) (filter pred (cdr li))))
      (else
        (filter pred (cdr li)))
       )
      )

(define (even? n)(= (remainder n 2)0 ))

(map square (filter even? li))