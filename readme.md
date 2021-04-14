# Binding check library for R6RS

`(binding)` library provides a predicate and a syntax to determine if an identifier is bound. 

# Expected use

- Test
- Ad hoc version check of library

# Install

Sorry.
This repository does not provide installation scripts.

Please copy the library files to the appropriate path according to the manual of Scheme implementation.

# Usage

Write the following at the beginning of the program.

```
(import (binding))
```

## `(identifier-bound? obj)` procedure

Returns `#t` if obj is an syntax object representing an *bound* identifier, and `#f` otherwise.

## `(bound? <keyword>)` syntax

`<keyword>` must be a keyword.
Expand to `#t` if `<keyword>` is an *bound* keyword, and `#f` otherwise.

# Scheme implementations that passed the tests of this library

- [Chez Scheme](https://cisco.github.io/ChezScheme/) 9.5.5
- [Racket](https://racket-lang.org/) 8.0
- [Larceny](http://www.larcenists.org/) 1.3
- [mosh](http://mosh.monaos.org/files/doc/text/About-txt.html) 0.2.5

# Scheme implementations that failed the tests of this library

- [IronScheme](https://github.com/IronScheme/IronScheme) 1.0.240
- [Sagittarius](https://bitbucket.org/ktakashi/sagittarius-scheme/wiki/Home) 0.9.7
- [Ypsilon](http://www.littlewingpinball.com/doc/ja/ypsilon/index.html) 0.9.6-update3
- [Guile](https://www.gnu.org/software/guile/guile.html) 3.0.5
