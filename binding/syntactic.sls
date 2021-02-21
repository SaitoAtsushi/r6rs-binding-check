#!r6rs
(library (binding syntactic)
  (export bound?)
  (import
   (for (only (rnrs base) define-syntax) run)
   (for (only (rnrs base) lambda) expand)
   (for (only (rnrs syntax-case) syntax-case syntax) expand)
   (for (binding procedural) expand))
  
  (define-syntax bound?
    (lambda(ctx)
      (syntax-case ctx ()
        ((_ id)
         (identifier-bound? #'id)))))
  )
