;;; Code:

; get head of list. error if not list
(car '(a b c))  ;a

; get all but head
(cdr '(a b c))  ;(b c)

; get head of list. nil if not list
(car-safe 'a)

(cdr-safe 'a)

(setq list1 '(a b c))
(car list1) ; a
(setq list2 (cons '(d e) list1) ;((d e) a b c)
