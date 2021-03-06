;Exercise 2.1.  Define a better version of make-rat that handles both positive and negative arguments. Make-rat should normalize the sign so that if the rational number is positive, both the numerator and denominator are positive, and if the rational number is negative, only the numerator is negative.

(define (sign x) (if (< x 0) -1 1))
(define (make-rat n d)
  (cons (* (sign n) (sign d) (abs n)) (abs d)))
(make-rat 1 2)
(1 . 2)

(make-rat 1 -2)
(-1 . 2)

(make-rat -1 -2)
(1 . 2)

(make-rat -1 2)
(-1 . 2)