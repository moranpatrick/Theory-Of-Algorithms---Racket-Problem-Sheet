#lang racket

; 1. Re-write the following expressions in Racket and evaluate them
;    using a Racket interpreter/compiler.

; (a) (3 × (5 + (10 ÷ 5)))
(* 3(+ 5(/ 10 5)))

; (b) (2 + 3 + 4 + 5)
(+ 2 3 4 5)

; (c) (1 + (5 + (2 + (10 ÷ 3))))
(+ 1 5 2 (/ 10 3))

; (d) (1 + (5 + (2 + (10 ÷ 3.0))))
(+ 1 5 2 (/ 10 3.0))

; (e) (3 + 5) × (10 ÷ 2)
(*(+ 3 5)(/ 10 2))

; (f) (3 + 5) × (10 ÷ 2) + (1 + (5 + (2 + (10 ÷ 3))))
(+ (* (+ 3 5) (/ 10 2)) (+ 1 5 2 (/ 10 3)))

; 2. Define a procedure discount that takes two arguments: an item’s initial
;    price and a percentage discount [2]. It should return the new price:

(define (discount original discount)
  (* original (- 1 (/ discount 100.0))))

(discount 10 5)
(discount 29.90 50)

; 3. Define a function grcomdiv that takes two integers and returns their greatest common divisor.
;    Code Adapted from https://github.com/acmeism/RosettaCodeData/blob/master/Task/Greatest-common-divisor/Racket/greatest-common-divisor-2.rkt

(define (grcomdiv a b)
  (if (= b 0)
      a
      (grcomdiv b (modulo a b))))

(grcomdiv 10 15)
(grcomdiv 64 30)  

; 4. Write a function called appearances that returns the number of times its first argument
;    appears as a member of its second argument [2].
;    Adapted From: https://stackoverflow.com/questions/26936949/dr-racket-recursion-count-occurrences

(define (appearances a b)
    (count (curry equal? a) b))

(appearances 4 (list -4 2 8 4 17 4 )) ; => 4 appears 2 times in the list
(appearances 1 (list 1 1 1 2 1 7 1 1 9 4 1 1 1 3)) ; => 1 appears 9 times in the list

