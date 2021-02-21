#!r6rs
(library (binding)
  (export bound? identifier-bound?)
  (import
   (for (binding syntactic) run)
   (for (binding procedural) run expand))
  )
