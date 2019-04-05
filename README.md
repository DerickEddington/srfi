[Scheme Requests for Implementation][SRFIs] as [R6RS][] libraries.

The libraries' names conform to [SRFI 97: SRFI Libraries][SRFI-97].  There is a
registry of available SRFIs and other platform features which works alongside
[SRFI 0: Feature-Based Conditional Expansion][SRFI-0].  The porting done so far
is mostly just taking the reference implementations from
http://srfi.schemers.org and wrapping them in libraries and tweaking the few
things needed to make them work in R6RS libraries and with implementations'
functionality.

These SRFIs are available:
```
(srfi :0 cond-expand)
(srfi :1 lists)
(srfi :2 and-let*)
(srfi :6 basic-string-ports)
(srfi :8 receive)
(srfi :9 records)
(srfi :11 let-values)
(srfi :13 strings)
(srfi :14 char-sets)
(srfi :16 case-lambda)
(srfi :19 time)
(srfi :23 error)
(srfi :25 multi-dimensional-arrays)
(srfi :26 cut)
(srfi :27 random-bits)
(srfi :31 rec)
(srfi :37 args-fold)
(srfi :38 with-shared-structure)
(srfi :39 parameters)
(srfi :41 streams)
(srfi :42 eager-comprehensions)
(srfi :43 vectors)
(srfi :45 lazy)
(srfi :48 intermediate-format-strings)
(srfi :61 cond)
(srfi :64 testing)
(srfi :67 compare-procedures)
(srfi :69 basic-hash-tables)
(srfi :78 lightweight-testing)
(srfi :98 os-environment-variables)
(srfi :99 records)
```

Scheme systems that can be supported are those that support the `*.IMPL.sls`
convention for implementation-specific libraries.  A variety of Scheme systems
were supported but those haven't been tried in many years, and currently only
Ikarus is known to still work.  It probably would be straightforward to get Chez
and Larceny working.

This collection was originally hosted at
http://code.launchpad.net/~scheme-libraries-team/scheme-libraries/srfi

Note that further development of this collection has occurred at
http://github.com/arcfide/chez-srfi, but I believe that only supports Chez
Scheme.  It might be worthwhile to incorporate those developments into this
collection which can support other Scheme systems.

[SRFIs]: http://srfi.schemers.org
[R6RS]: http://www.r6rs.org
[SRFI-97]: http://srfi.schemers.org/srfi-97
[SRFI-0]: http://srfi.schemers.org/srfi-0
