;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname HW7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;hw 7
(define zero
  (lambda ()
    '()))

(define zero?
  (lambda (n)
    (null? n)))

(define base-1
  (lambda(base)
    (- base 1)))

(define successor
  (lambda (n)
    (if (null? n)
        '(1)
        (let([firstDigit (car n)])
         (if(= firstDigit (base-1 $base) )
            (cons(0 (succesor(cdr n))))
            (cons (+ firstDigit 1)(cdr n)))))))

(define predecesor
  (lambda (n)
    (let([firstNum (car n)]
         [RestNum (cdr n)])
      (if(isZero? firstNum)
         (cons (base-1 $base) (predecesor RestNum))
         (if(and (= firstNum 1) (isZero? RestNum))
            '()
            (cons (- firstNum 1) RestNum ))))))

