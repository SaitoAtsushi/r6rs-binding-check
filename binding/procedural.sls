#!r6rs
(library (binding procedural)
  (export identifier-bound?)
  (import
   (for (only (rnrs base) define list quasiquote unquote lambda cond else not) run)
   (for (only (rnrs base) quote) run (meta -1))
   (for (only (rnrs lists) exists memq) run)
   (for (only (rnrs syntax-case) syntax->datum identifier? free-identifier=?) run)
   (for (only (rnrs syntax-case) syntax) run (meta -1))
   (for (only (rnrs syntax-case) datum->syntax) run (meta -1))
   (for (only (rnrs eval) eval environment) run))

  (define (identifier-bound? id)
    (cond
     ((not (identifier? id)) #f)
     ((exists (lambda(x)(free-identifier=? id x))
              (list #'syntax #'quote #'datum->syntax))
      #t)
     ((free-identifier=?
       (eval `(datum->syntax #'k ',(syntax->datum id))
             (environment '(only (rnrs) datum->syntax syntax quote)))
       id)
      #f)
     ((memq (syntax->datum id) '(datum->syntax syntax quote))
      #f)
     (else #t)))
  )
