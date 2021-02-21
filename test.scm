#!r6rs
(import (for (only (rnrs base) assert lambda define not quote let) run)
        (for (only (rnrs syntax-case) syntax datum->syntax) run)
        (for (binding) run expand))

(define bar #t)

(assert (not (bound? foo)))
(assert (bound? bar))
(assert (bound? lambda))
(assert (bound? bound?))

(assert (bound? syntax))
(assert (bound? quote))
(assert (bound? datum->syntax))

(let ((baz #t))
  (assert (bound? baz)))

(assert (not (bound? baz)))
