/* Date Stamp */ -d"_lint_au_misra3_lnt=au-misra3.lnt modified 12-Jun-2014"
/* To document usage use: -message( "Using " _lint_au_misra3_lnt ) */

// ---------------------------------------------------------------------
// This file is provided by Gimpel Software (www.gimpel.com) for use with
// its products PC-lint and FlexeLint.
//
// Redistribution and use of this file, with or without modification, is
// permitted provided that any such redistribution retains this notice.
// ---------------------------------------------------------------------

// au-misra3.lnt -- Author options - MISRA C 2012

/*
    This options file can be used to explicitly activate those
    checks advocated by the Motor Industry Software Reliability
    Association.

    You can use this file directly when linting your programs as in:

    lin  au-misra3  files

    Gimpel Software relies on the document, "MISRA-C:2012
    Guidelines for the use of the C language in critical systems",
    copyright 2012 by MIRA Limited, as the primary source for this
    file.  Gimpel Software makes no warranty as to the completeness
    or applicability of this options file and reserves the right to
    amend or alter the official contents of such at any time.

    "MISRA" is a registered trademark of MIRA Limited, held on
    behalf of the MISRA Consortium.

 */
    -misra(3)       // Activate MISRA Essential Type model

/**** Dir 1.1 (Req) ************/

{% if KVAl0 == 1 %}
    /* not statically checkable */
{% else %}
{% endif %}

/**** Dir 2.1 (Req) ************/

{% if KVAl1 == 1 %}
    -A(C99) 		       /* strict ISO C99 */
    /* Note: if you code to the C90 standard instead, you may
       want to comment out the above option and uncomment the
       following option. You will also want to do likewise for
       other uses of the '-A(C99)' option throughout this file. */
    // -A(C90)                    /* strict ANSI */
    +e950                      /* flag non-standard word or construct */
    +elib(950)
    -append(950,[MISRA 2012 Directive 2.1, required])
{% else %}
{% endif %}

/**** Dir 3.1 (Req) ************/

{% if KVAl2 == 1 %}
    /* not statically checkable */
{% else %}
{% endif %}

/**** Dir 4.1 (Req) ************/

{% if KVAl3 == 1 %}
    /* not statically checkable */
{% else %}
{% endif %}

/**** Dir 4.2 (Adv) ************/

{% if KVAl4 == 1 %}
    /* not statically checkable */
{% else %}
{% endif %}

/**** Dir 4.3 (Req) ************/

{% if KVAl5 == 1 %}
    +e586        /* to activate the deprecation message */
    +elib(586)
    -deprecate(keyword,asm,[MISRA 2012 4.3, required])
{% else %}
{% endif %}

/**** Dir 4.4 (Adv) ************/

{% if KVAl6 == 1 %}
    /* This requirement (that there be no commented-out code) is, in
       principle, not statically checkable.  The reason given for the
       requirement is that comments do not nest.  Thus a commented
       out section of code that happens to use slash-star commenting
       could inadvertently introduce unwanted code.  Rule 3.1, however,
       addresses the nested comment issue and hence the major concern
       that this requirement seeks to address is indeed checkable.
     */
    -fnc                   /* flag nested comments */
    +e602                  /* comment within comment */
    +elib(602)
    -append(602,[MISRA 2012 Directive 4.4, advisory])
{% else %}
{% endif %}

/**** Dir 4.5 (Adv) ************/

{% if KVAl7 == 1 %}
    //  While Lint can enforce this directive with the following four
    //  options, doing so can increase the run time of Lint depending
    //  upon the number of identifiers in your program. If you want
    //  this checking, uncomment each of the following four options.
    //
    +fta
    +e9046	  	     /* typographical ambiguity */
    +elib(9046)
    -append(9046,[MISRA 2012 Directive 4.5, advisory])
{% else %}
{% endif %}

/**** Dir 4.6 (Adv) ************/

{% if KVAl8 == 1 %}
    +e970               /* flag modifiers used outside of typedefs */
    +elib(970)
    -append(970,[MISRA 2012 Directive 4.6, advisory])
    //  For the duration, we are presuming MISRA does not want
    //  diagnostics for the bool type.
    -esym(970,bool)
    -esym(970,char)
{% else %}
{% endif %}

/**** Dir 4.7 (Req) ************/

{% if KVAl9 == 1 %}
    +e534               /* ignoring return value of function */
    +elib(534)
    -append(534,[MISRA 2012 Directive 4.7, required])
{% else %}
{% endif %}

/**** Dir 4.8 (Adv) ************/

{% if KVAl10 == 1 %}
    +e9045               /* non-hidden definition of type */
    +elib(9045)
    -append(9045,[MISRA 2012 Directive 4.8, advisory])
{% else %}
{% endif %}

/**** Dir 4.9 (Adv) ************/

{% if KVAl11 == 1 %}
    +e9026               /* function-like macro defined */
    +elib(9026)
    -append(9026,[MISRA 2012 Directive 4.9, advisory])
{% else %}
{% endif %}

/**** Dir 4.10 (Req) ************/

{% if KVAl12 == 1 %}
    +e451             /* Header repeatedly included without guard */
    +elib(451)
    -append(451,[MISRA 2012 Directive 4.10, required])
{% else %}
{% endif %}

/**** Dir 4.11 (Req) ************/

{% if KVAl13 == 1 %}
    /* The arguments to over 100 calls to standard library functions
       are monitored; users can specify additional constraints for
       other functions.
     */
{% else %}
{% endif %}

/**** Dir 4.12 (Req) ************/

{% if KVAl14 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,calloc,[MISRA 2012 Directive 4.12, required])
    -deprecate(function,malloc,[MISRA 2012 Directive 4.12, required])
    -deprecate(function,realloc,[MISRA 2012 Directive 4.12, required])
    -deprecate(function,free,[MISRA 2012 Directive 4.12, required])
{% else %}
{% endif %}

/**** Dir 4.13 (Adv) ************/

{% if KVAl15 == 1 %}
    /* supported by uncommenting the next six options and use of the
       -function_pair() option */
    +e480
    +elib(480)
    -append(480,[MISRA 2012 Directive 4.13, advisory])
    +e481
    +elib(481)
    -append(481,[MISRA 2012 Directive 4.13, advisory])
{% else %}
{% endif %}

/**** Rule 1.1 (Req) ************/

{% if KVAl16 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    -A(C99) 		       /* strict ISO C99 */
    /* Note: if you code to the C90 standard instead, you may
       want to comment out the above option and uncomment the
       following option. You will also want to do likewise for
       other uses of the '-A(C99)' option throughout this file. */
    // -A(C90)                    /* strict ANSI */
    +e950                      /* flag non-standard word or construct */
    +elib(950)
    -append(950,[MISRA 2012 Rule 1.1, required])
{% else %}
{% endif %}

/**** Rule 1.2 (Adv) ************/

{% if KVAl17 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    -A(C99) 		       /* strict ISO C99 */
    /* Note: if you code to the C90 standard instead, you may
       want to comment out the above option and uncomment the
       following option. You will also want to do likewise for
       other uses of the '-A(C99)' option throughout this file. */
    // -A(C90)                    /* strict ANSI */
    +e950                      /* flag non-ANSI word or construct */
    +elib(950)
    -append(950,[MISRA 2012 Rule 1.2, advisory])
{% else %}
{% endif %}

/**** Rule 1.3 (Req) ************/

{% if KVAl18 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */

    /* Avoid the use of undefined or unspecified behavior as described
       in ISO C, Appendix A.6.1 and Appendix A.6.2 */

    /* Source file not ending in a new-line character, ending in
       new-line character immediately preceded by a backslash
       character, or ending in a partial preprocessing token or
       comment (ISO C, Appendix A.6.2, point 1).
     */
    +e406   /* unclosed comment */
    +elib(406)
    -append(406,[MISRA 2012 Rule 1.3, required])

    /* Non-standard character usage (ISO C, Appendix A.6.2, point 2).
     */
    +e27    /* illegal character */
    +elib(27)
    -append(27,[MISRA 2012 Rule 1.3, required])

    /* Unclosed quotes (ISO C, Appendix A.6.2, point 4).
     */
    +e2     /* unclosed quote */
    +elib(2)
    -append(2,[MISRA 2012 Rule 1.3, required])

    /* Repeated label within a function (ISO C, Appendix A.6.2, point
       5).
     */
    +e31    /* symbol redefinition */
    +elib(31)
    -append(31,[MISRA 2012 Rule 1.3, required])

    /* Non-visible identifier used (ISO C, Appendix A.6.2, point 6).
     */
    +e40    /* undeclared identifier */
    +elib(40)
    -append(40,[MISRA 2012 Rule 1.3, required])

    /* Identifiers for the same entity differ beyond the minimal
       significant characters (ISO C, Appendix A.6.2, point 7).
       See Rules 5.1, 5.2, 5.4, and 5.5.
     */

    /* The same identifier has both internal and external linkage in
       the same translation unit (ISO C, Appendix A.6.2, point 8).
     */
    +e401   /* symbol not previously declared static */
    +elib(401)
    -append(401,[MISRA 2012 Rule 1.3, required])

    /* Multiple definitions for the same externally linked identifier
       (ISO C, Appendix A.6.2, point 9).
     */
    +e31    /* symbol redefinition */
    +elib(31)

    /* Using automatic storage data via a pointer after the data's
       lifetime (ISO C, Appendix A.6.2, point 10).
     */
    +e604   /* returning address of auto variable */
    +elib(604)
    -append(604,[MISRA 2012 Rule 1.3, required])
    +e934   /* taking address of near auto variable */
    +elib(934)
    -append(934,[MISRA 2012 Rule 1.3, required])

    /* Incompatible redeclarations (ISO C, Appendix A.6.2, point 11).
       See Rule 8.3
     */

    /* Non-standard escape sequence (ISO C, Appendix A.6.2, point 12).
     */
    +e606   /* non-ANSI escape sequence */
    +elib(606)
    -append(606,[MISRA 2012 Rule 1.3, required])

    /* Non-standard character in header name (ISO C, Appendix A.6.2,
       point 15).
       See Rule 20.2
     */
    +e9020   /* header name with non-standard character */
    +elib(9020)
    -append(9020,[MISRA 2012 Rule 1.3, required])

    /* No complete type available (ISO C, Appendix A.6.2, point 16).
     */
    +e86    /* structure has no data elements */
    +elib(86)
    -append(86,[MISRA 2012 Rule 1.3, required])

    /* Using or converting a void expression (ISO C, Appendix A.6.2,
       point 17).
     */
    +e64    /* type mismatch */
    +elib(64)
    -append(64,[MISRA 2012 Rule 1.3, required])
    +e67    /* cannot cast between types */
    +elib(67)
    -append(67,[MISRA 2012 Rule 1.3, required])
    +e144   /* non-existent return value */
    +elib(144)
    -append(144,[MISRA 2012 Rule 1.3, required])

    /* Modifying an object more than once or modifying and accessing
       between two sequence points (ISO C, Appendix A.6.2, point 18).
       See Rule 13.2
     */
    +e564   /* variable depends on order of evaluation */
    +elib(564)
    -append(564,[MISRA 2012 Rule 1.3, required])

    /* Invalid arithmetic operations or unrepresentable results
       (ISO C, Appendix A.6.2, point 19).
     */
    +e54    /* division by 0 */
    +elib(54)
    -append(54,[MISRA 2012 Rule 1.3, required])
    +e414   /* possible division by 0 */
    +elib(414)
    -append(414,[MISRA 2012 Rule 1.3, required])
    +e795   /* conceivable division by 0 */
    +elib(795)
    -append(795,[MISRA 2012 Rule 1.3, required])
    /* Also, see Rule 12.4 */

    /* Passing a void argument to a function (ISO C, Appendix A.6.2,
       point 20).
     */
    +e64    /* type mismatch */
    +elib(64)

    /* Incompatible function redeclaration (ISO C, Appendix A.6.2,
       point 22).
       See Rule 8.3
     */

    /* An invalid array reference, null pointer reference, or
       reference to an object declared with automatic storage duration in
       a terminated block occurs (ISO C, Appendix A.6.2, point 24).
     */
    +e64    /* type mismatch */
    +elib(64)
    +e413   /* likely use of null pointer */
    +elib(413)
    -append(413,[MISRA 2012 Rule 1.3, required])
    +e415   /* out-of-bounds pointer */
    +elib(415)
    -append(415,[MISRA 2012 Rule 1.3, required])
    +e416   /* out-of-bounds pointer */
    +elib(416)
    -append(416,[MISRA 2012 Rule 1.3, required])
    +e428   /* negative subscript */
    +elib(428)
    -append(428,[MISRA 2012 Rule 1.3, required])
    /* Also, see Rule 17.6 */

    /* A pointer to a function is converted to a pointer to an object
       or a pointer to an object is converted to a pointer to a function
       (ISO C, Appendix A.6.2, point 26).
     */
    +e64    /* type mismatch */
    +elib(64)
    +e740   /* unusual pointer cast */
    +elib(740)
    -append(740,[MISRA 2012 Rule 1.3, required])
    /* Also, see Rule 11.1 and 11.2 */

    /* A pointer is converted to other than an integral or pointer
       type (ISO C, Appendix A.6.2, point 27).
     */
    +e64    /* type mismatch */
    +elib(64)
    +e71    /* cannot cast */
    +elib(71)

    /* An expression is shifted by a negative number or by an amount
       greater than or equal to the width in bits of the expression being
       shifted (ISO C, Appendix A.6.2, point 30).
     */
    +e504   /* unusual shift */
    +elib(504)
    -append(504,[MISRA 2012 Rule 1.3, required])

    /* An identifier for an object is declared with no linkage and the
       type of the object is incomplete after its declarator, or after its
       init-declarator if it has an initializer (ISO C, Appendix
       A.6.2, point 33).
     */
    +e86    /* structure has no data elements */
    +elib(86)

    /* Declaring a function at block scope with a storage-class
       specifier other than extern (ISO C, Appendix A.6.2, point 34).
     */
    +e629   /* static class for function */
    +elib(629)
    -append(629,[MISRA 2012 Rule 1.3, required])

    /* A bit-field is declared with a type other than int, signed int,
       or unsigned int (ISO C, Appendix A.6.2, point 35).
       See Rule 6.1.
     */

    /* Attempting to modify an object with const-qualified type by
       means of an lvalue with non-const-qualified type (ISO C,
       Appendix A.6.2, point 36).
     */
    +e158   /* assignment increases capability */
    +elib(158)
    -append(158,[MISRA 2012 Rule 1.3, required])

    /* Attempting to refer to an object with volatile-qualified type
       by means of an lvalue with non-volatile-qualified type (ISO C,
       Appendix A.6.2, point 37).
     */
    +e158   /* assignment increases capability */
    +elib(158)

    /* Using the value of uninitialized automatic object (ISO C,
       Appendix A.6.2, point 38).
       See Rule 9.1
     */

    /* An object with aggregate or union type with static storage
       duration has a non-brace-enclosed initializer, or an object
       with aggregate or union type with automatic storage duration
       has either a single expression initializer with a type other
       than that of the object or a non-brace-enclosed initializer
       (ISO C, Appendix A.6.2, point 39).
       Also, see Rule 9.2
     */
    +e64    /* type mismatch */
    +elib(64)

    /* The value of a function is used, but no value was returned
       (ISO C, Appendix A.6.2, point 40).
       See Rule 17.4.
     */

    /* A function that accepts a variable number of arguments is
       defined without a parameter type list that ends with the
       ellipsis notation (ISO C, Appendix A.6.2, point 41).
     */

    /* An identifier for an object with internal linkage and an
       incomplete type is declared with a tentative definition (ISO C,
       Appendix A.6.2, point 42).
     */
    +e86    /* structure has no data elements */
    +elib(86)

    /* Non-standard #include preprocessing directive (ISO C, Appendix
       A.6.2, point 44).
       See Rule 20.3.
     */

    /* Non-standard #line directive (ISO C, Appendix A.6.2, point 49).
     */
    +"estring(10,a numeric constant)"  /* expecting a numeric constant */

    /* #defining or #undefing any of: defined, __LINE__, __FILE__,
       __DATE__, __TIME__, or __STDC__ (ISO C, Appendix A.6.2, point 50).
     */
    +e136   /* illegal macro name */
    +elib(136)
    -append(136,[MISRA 2012 Rule 1.3, required])

    /* Format-argument mismatch in an fprintf or fscanf type of
       function (ISO C, Appendix A.6.2, point 75).
     */
    +e558   /* too few arguments */
    +elib(558)
    -append(558,[MISRA 2012 Rule 1.3, required])
    +e719   /* too many arguments */
    +elib(719)
    -append(719,[MISRA 2012 Rule 1.3, required])

    /* A %% conversion specification for the fprintf or fscanf
       function contains characters between the pair of % characters
       (ISO C, Appendix A.6.2, point 77).
     */
    +e557   /* unrecognized format */
    +elib(557)
    -append(557,[MISRA 2012 Rule 1.3, required])

    /* An aggregate or union, or a pointer to an aggregate or union is
       an argument to the fprintf function, except for the conversion
       specifiers %s (for an array of character type) or %p (for a pointer
       to void) (ISO C, Appendix A.6.2, point 81).
     */
    +e437   /* passing struct to ellipsis */
    +elib(437)
    -append(437,[MISRA 2012 Rule 1.3, required])

    /* Referring to deallocated space (ISO C, Appendix A.6.2, point
       87).
     */
    +e449   /* previously deallocated pointer */
    +elib(449)
    -append(449,[MISRA 2012 Rule 1.3, required])

    /* Misuse of free or realloc (ISO C, Appendix A.6.2, point 88).
     */
    +esym(424,free) /* inappropriate deallocation */
    -append(424,[MISRA 2012 Rule 1.3, required])

    /* An array written to by a copying or concatenation function is
       too small (ISO C, Appendix A.6.2, point 91).
     */
    +e419   /* data overrun */
    +elib(419)
    -append(419,[MISRA 2012 Rule 1.3, required])

    /* Order of evaluation (ISO C, Appendix A.6.1, point 7).
     */
    +e564   /* variable depends on order of evaluation */
    +elib(564)
    -append(564,[MISRA 2012 Rule 1.3, required])

    /* Side effects order (ISO C, Appendix A.6.1, point 8).
     */
    +e931   /* both sides of an expression have side-effects */
    +elib(931)
    -append(931,[MISRA 2012 Rule 1.3, required])

    /* Function argument evaluation (ISO C, Appendix A.6.1, point 9).
     */
    +e564   /* variable depends on order of evaluation */
    +elib(564)

    /* The order in which # and ## operations are evaluated during
       macro substitution (ISO C, Appendix A.6.1, point 12).
     */
    +e9023   /* multiple '#/##' operators in macro definition */
    +elib(9023)
    -append(9023,[MISRA 2012 Rule 1.3, required])

    /* Whether setjmp is a macro or an external identifier (ISO C,
       Appendix A.6.1, point 14).
       See Rule 21.2.
     */
{% else %}
{% endif %}

/**** Rule 2.1 (Req) ************/

{% if KVAl19 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e506       /* constant value boolean */
    +elib(506)
    -append(506,[MISRA 2012 Rule 2.1, required])
    +e527       /* unreachable */
    +elib(527)
    -append(527,[MISRA 2012 Rule 2.1, required])
    +e681       /* loop not entered */
    +elib(681)
    -append(681,[MISRA 2012 Rule 2.1, required])
    +e827       /* loop not reachable */
    +elib(827)
    -append(827,[MISRA 2012 Rule 2.1, required])
{% else %}
{% endif %}

/**** Rule 2.2 (Req) ************/

{% if KVAl20 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e438       /* value not used */
    +elib(438)
    -append(438,[MISRA 2012 Rule 2.2, required])
    +e505       /* redundant argument to comma */
    +elib(505)
    -append(505,[MISRA 2012 Rule 2.2, required])
    +e520       /* highest operator has no side effects */
    +elib(520)
    -append(520,[MISRA 2012 Rule 2.2, required])
    +e521       /* highest operator has no side effects */
    +elib(521)
    -append(521,[MISRA 2012 Rule 2.2, required])
    +e522       /* highest operator has no side effects */
    +elib(522)
    -append(522,[MISRA 2012 Rule 2.2, required])
{% else %}
{% endif %}

/**** Rule 2.3 (Adv) ************/

{% if KVAl21 == 1 %}
    +e751	   /* local typedef not referenced */
    +elib(751)
    -append(751,[MISRA 2012 Rule 2.3, advisory])
    +e756	   /* global not referenced */
    +elib(756)
    -append(756,[MISRA 2012 Rule 2.3, advisory])
{% else %}
{% endif %}

/**** Rule 2.4 (Adv) ************/

{% if KVAl22 == 1 %}
    +e753	   /* local tag not referenced */
    +elib(753)
    -append(753,[MISRA 2012 Rule 2.4, advisory])
    +e9058
    +elibsym(9058)
    -append(9058,[MISRA 2012 Rule 2.4, advisory])
{% else %}
{% endif %}

/**** Rule 2.5 (Adv) ************/

{% if KVAl23 == 1 %}
    +e750	   /* local macro not referenced */
    +elib(750)
    -append(750,[MISRA 2012 Rule 2.5, advisory])
    +e755	   /* global macro not referenced */
    +elib(755)
    -append(755,[MISRA 2012 Rule 2.5, advisory])
{% else %}
{% endif %}

/**** Rule 2.6 (Adv) ************/

{% if KVAl24 == 1 %}
    +e563	   /* label not referenced */
    +elib(563)
    -append(563,[MISRA 2012 Rule 2.6, advisory])
{% else %}
{% endif %}

/**** Rule 2.7 (Adv) ************/

{% if KVAl25 == 1 %}
    +e715      	     /* not referenced */
    +elib(715)
    -append(715,[MISRA 2012 Rule 2.7, advisory])
{% else %}
{% endif %}

/**** Rule 3.1 (Req) ************/

{% if KVAl26 == 1 %}
    -fnc                   /* flag nested comments */
    +e602                  /* comment within comment */
    +elib(602)
    -append(602,[MISRA 2012 Rule 3.1, required])
    +e9059
    +elib(9059)
    -append(9059,[MISRA 2012 Rule 3.1, required])
    +e9066
    +elib(9066)
    -append(9066,[MISRA 2012 Rule 3.1, required])
{% else %}
{% endif %}

/**** Rule 3.2 (Req) ************/

{% if KVAl27 == 1 %}
    +e427      	     /* C++ comment ends in \\ */
    +elib(427)
    -append(427,[MISRA 2012 Rule 3.2, required])
{% else %}
{% endif %}

/**** Rule 4.1 (Req) ************/

{% if KVAl28 == 1 %}
    +e9039                              /* prohibited escape sequence */
    +elib(9039)
    -append(9039,[MISRA 2012 Rule 4.1, required])
{% else %}
{% endif %}

/**** Rule 4.2 (Adv) ************/

{% if KVAl29 == 1 %}
    -ftg                        /* inhibit use of trigraphs */
    +e584                       /* activate trigraph detected message */
    +elib(584)
    -append(584,[MISRA 2012 Rule 4.2, advisory])
    +e739                       /* activate trigraph in string message */
    +elib(739)
    -append(739,[MISRA 2012 Rule 4.2, advisory])
    +e9060                       /* trigraph in comment */
    +elib(9060)
    -append(9060,[MISRA 2012 Rule 4.2, advisory])
{% else %}
{% endif %}

/**** Rule 5.1 (Req) ************/

{% if KVAl30 == 1 %}
    -idlen(31)  /* flag names identical in the first 31 characters */
    +e621       /* Identifier clash - length set by -idlen */
    +elib(621)
    -append(621,[MISRA 2012 Rule 5.1, required])
{% else %}
{% endif %}

/**** Rule 5.2 (Req) ************/

{% if KVAl31 == 1 %}
    -idlen(31)  /* flag names identical in the first 31 characters */
    +e621       /* Identifier clash - length set by -idlen */
    +elib(621)
    -append(621,[MISRA 2012 Rule 5.2, required])
{% else %}
{% endif %}

/**** Rule 5.3 (Req) ************/

{% if KVAl32 == 1 %}
    +e578               /* enable reports of name hiding */
    +elib(578)
    -append(578,[MISRA 2012 Rule 5.3, required])
{% else %}
{% endif %}

/**** Rule 5.4 (Req) ************/

{% if KVAl33 == 1 %}
    -idlen(31)  /* flag names identical in the first 31 characters */
    +e621       /* Identifier clash - length set by -idlen */
    +elib(621)
    -append(621,[MISRA 2012 Rule 5.4, required])
{% else %}
{% endif %}

/**** Rule 5.5 (Req) ************/

{% if KVAl34 == 1 %}
    +e123       /* macro defined with arguments */
    +elib(123)
    -append(123,[MISRA 2012 Rule 5.5, required])
    -idlen(31)  /* flag names identical in the first 31 characters */
    +e621       /* Identifier clash - length set by -idlen */
    +elib(621)
    -append(621,[MISRA 2012 Rule 5.5, required])
    +e9061                       /* non-distinct identifier */
    +elib(9061)
    -append(9061,[MISRA 2012 Rule 5.5, required])
{% else %}
{% endif %}

/**** Rule 5.6 (Req) ************/

{% if KVAl35 == 1 %}
    +e578               /* enable reports of name hiding */
    +elib(578)
    -append(578,[MISRA 2012 Rule 5.6, required])
    +e623               /* redefining the storage class of symbol */
    +elib(623)
    -append(623,[MISRA 2012 Rule 5.6, required])
    +estring(9062,typedef)  /* non-unique typedef */
    +elib(9062)
    -append(9062(typedef),[MISRA 2012 Rule 5.6, required])
{% else %}
{% endif %}

/**** Rule 5.7 (Req) ************/

{% if KVAl36 == 1 %}
    +e407               /* Inconsistent use of tag */
    +elib(407)
    -append(407,[MISRA 2012 Rule 5.7, required])
    +e578               /* Declaration of Symbol hides Symbol */
    +elib(578)
    -append(578,[MISRA 2012 Rule 5.7, required])
    +e14                /* Symbol previously defined */
    +elib(14)
    -append(14,[MISRA 2012 Rule 5.7, required])
    +e15                /* Symbol redeclared */
    +elib(15)
    -append(15,[MISRA 2012 Rule 5.7, required])
    +e631               /* Tag defined differently */
    +elib(631)
    -append(631,[MISRA 2012 Rule 5.7, required])
    +e9062                       /* non-unique tag */
    +elib(9062)
    -append(9062(tag),[MISRA 2012 Rule 5.7, required])
{% else %}
{% endif %}

/**** Rule 5.8 (Req) ************/

{% if KVAl37 == 1 %}
    +e401           /* Symbol not previously declared static */
    +elib(401)
    -append(401,[MISRA 2012 Rule 5.8, required])
    +e578           /* Declaration of Symbol hides Symbol */
    +elib(578)
    -append(578,[MISRA 2012 Rule 5.8, required])
    +e580           /* enable reports of name hiding */
    +elib(580)
    -append(580,[MISRA 2012 Rule 5.8, required])
{% else %}
{% endif %}

/**** Rule 5.9 (Adv) ************/

{% if KVAl38 == 1 %}
    +e578           /* enable reports of name hiding */
    +elib(578)
    -append(578,[MISRA 2012 Rule 5.9, advisory])
    +e580           /* enable reports of name hiding */
    +elib(580)
    -append(580,[MISRA 2012 Rule 5.9, advisory])
{% else %}
{% endif %}

/**** Rule 6.1 (Req) ************/

{% if KVAl39 == 1 %}
    +e46                /* field type should be int */
    +elib(46)
    -append(46,[MISRA 2012 Rule 6.1, required])
    +e806               /* small bit field is signed rather than unsigned */
    +elib(806)
    -append(806,[MISRA 2012 Rule 6.1, required])
{% else %}
{% endif %}

/**** Rule 6.2 (Req) ************/

{% if KVAl40 == 1 %}
    +e9088               /* named signed single-bit bit-field */
    +elib(9088)
    -append(9088,[MISRA 2012 Rule 6.2, required])
{% else %}
{% endif %}

/**** Rule 7.1 (Req) ************/

{% if KVAl41 == 1 %}
    +e9001                              /* Octal constant used */
    +elib(9001)
    -append(9001,[MISRA 2012 Rule 7.1, required])
{% else %}
{% endif %}

/**** Rule 7.2 (Req) ************/

{% if KVAl42 == 1 %}
    +e9048                              /* unsigned literal without 'U' suffix */
    +elib(9048)
    -append(9048,[MISRA 2012 Rule 7.2, required])
{% else %}
{% endif %}

/**** Rule 7.3 (Req) ************/

{% if KVAl43 == 1 %}
    +e620                           /* suspicious constant */
    +elib(620)
    -append(620,[MISRA 2012 Rule 7.3, required])
    +e9057                          /* "l" after "u" in literal suffix */
    +elib(9057)
    -append(9057,[MISRA 2012 Rule 7.3, required])
{% else %}
{% endif %}

/**** Rule 7.4 (Req) ************/

{% if KVAl44 == 1 %}
    +fsc
    +e489                           /* attempting to modify a string literal */
    +elib(489)
    -append(489,[MISRA 2012 Rule 7.4, required])
    +e1776                          /* string literal not const safe */
    +elib(1776)
    -append(1776,[MISRA 2012 Rule 7.4, required])
    +e1778                          /* assignment of string literal not const safe */
    +elib(1778)
    -append(1778,[MISRA 2012 Rule 7.4, required])
{% else %}
{% endif %}

/**** Rule 8.1 (Req) ************/

{% if KVAl45 == 1 %}
    +e601                           /* no explicit type */
    +elib(601)
    -append(601,[MISRA 2012 Rule 8.1, required])
    +e745                           /* function has no explicit type */
    +elib(745)
    -append(745,[MISRA 2012 Rule 8.1, required])
    +e808                           /* no explicit type */
    +elib(808)
    -append(808,[MISRA 2012 Rule 8.1, required])
    +e832                           /* parameter has no explicit type */
    +elib(832)
    -append(832,[MISRA 2012 Rule 8.1, required])
    +e939                           /* return type defaults to int */
    +elib(939)
    -append(939,[MISRA 2012 Rule 8.1, required])
{% else %}
{% endif %}

/**** Rule 8.2 (Req) ************/

{% if KVAl46 == 1 %}
    +e937                     /* old-style function declaration */
    +elib(937)
    -append(937,[MISRA 2012 Rule 8.2, required])
    +e745                           /* function has no explicit type */
    +elib(745)
    -append(745,[MISRA 2012 Rule 8.2, required])
    +e939                           /* return type defaults to int */
    +elib(939)
    -append(939,[MISRA 2012 Rule 8.2, required])
    -fvr                          /* varying return mode not allowed */
    -strong()                     /* enable strong typing for
                                     declarations */
    +e18                          /* symbol redeclared */
    +elib(18)
    -append(18,[MISRA 2012 Rule 8.2, required])

    +e936                         /* old-style function definition */
    +elib(936)
    -append(936,[MISRA 2012 Rule 8.2, required])

    +e955                         /* param name missing from prototype */
    +elib(955)
    -append(955,[MISRA 2012 Rule 8.2, required])
{% else %}
{% endif %}

/**** Rule 8.3 (Req) ************/

{% if KVAl47 == 1 %}
    -fvr                          /* varying return mode not allowed */
    -strong()                     /* enable strong typing for declarations */
    +e18                          /* symbol redeclared */
    +elib(18)
    -append(18,[MISRA 2012 Rule 8.3, required])
    +e516                         /* argument type conflict */
    +elib(516)
    -append(516,[MISRA 2012 Rule 8.3, required])
    +e532                         /* return mode of symbol inconsistent */
    +elib(532)
    -append(532,[MISRA 2012 Rule 8.3, required])
    +e9072                        /* parameter list differs */
    +elib(9072)
    -append(9072,[MISRA 2012 Rule 8.3, required])
{% else %}
{% endif %}

/**** Rule 8.4 (Req) ************/

{% if KVAl48 == 1 %}
    +e15        /* symbol redeclared */
    +elib(15)
    -append(15,[MISRA 2012 Rule 8.4, required])
    +e64        /* flag type mismatch */
    +elib(64)
    -append(64,[MISRA 2012 Rule 8.4, required])
    +e516       /* argument type mismatch */
    +elib(516)
    -append(516,[MISRA 2012 Rule 8.4, required])
    +e9075                        /* extern defined without prior declaration */
    +elib(9075)
    -append(9075,[MISRA 2012 Rule 8.4, required])
{% else %}
{% endif %}

/**** Rule 8.5 (Req) ************/

{% if KVAl49 == 1 %}
    +e9004        /* object/function previously declared */
    +elib(9004)
    -append(9004,[MISRA 2012 Rule 8.5, required])
{% else %}
{% endif %}

/**** Rule 8.6 (Req) ************/

{% if KVAl50 == 1 %}
    --fmd        /* diallow multiple definitions */
    +e14        /* Symbol previously defined */
    +elib(14)
    -append(14,[MISRA 2012 Rule 8.6, required])
{% else %}
{% endif %}

/**** Rule 8.7 (Adv) ************/

{% if KVAl51 == 1 %}
    +e765        /* could be made static */
    +elib(765)
    -append(765,[MISRA 2012 Rule 8.7, advisory])
{% else %}
{% endif %}

/**** Rule 8.8 (Req) ************/

{% if KVAl52 == 1 %}
    +e839           /* storage class assumed static */
    +elib(839)
    -append(839,[MISRA 2012 Rule 8.8, required])
{% else %}
{% endif %}

/**** Rule 8.9 (Adv) ************/

{% if KVAl53 == 1 %}
    +e9003        /* could define variable at block scope */
    +elib(9003)
    -append(9003,[MISRA 2012 Rule 8.9, advisory])
{% else %}
{% endif %}

/**** Rule 8.10 (Req) ************/

{% if KVAl54 == 1 %}
    +e695    	     /* inline function without storage-class specifier */
    +elib(695)
    -append(695,[MISRA 2012 Rule 8.10, required])
    +estring(9056,extern)     /* inline function defined with extern */
    -append(9056,[MISRA 2012 Rule 8.10, required])
{% else %}
{% endif %}

/**** Rule 8.11 (Adv) ************/

{% if KVAl55 == 1 %}
    +e9067             /* array has no dimension or initializer */
    +elib(9067)
    -append(9067,[MISRA 2012 Rule 8.11, advisory])
{% else %}
{% endif %}

/**** Rule 8.12 (Req) ************/

{% if KVAl56 == 1 %}
    +e488	/* duplicate enumerator values */
    +elib(488)
    -append(488,[MISRA 2012 Rule 8.12, required])
{% else %}
{% endif %}

/**** Rule 8.13 (Adv) ************/

{% if KVAl57 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e818	/* pointer could be declared pointing to const */
    +elib(818)
    -append(818,[MISRA 2012 Rule 8.13, advisory])
    +e844	/* pointer could be declared pointing to const */
    +elib(844)
    -append(844,[MISRA 2012 Rule 8.13, advisory])
    +e954	/* pointer could be declared pointing to const */
    +elib(954)
    -append(954,[MISRA 2012 Rule 8.13, advisory])
{% else %}
{% endif %}

/**** Rule 8.14 (Req) ************/

{% if KVAl58 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(keyword,restrict,[MISRA 2012 Rule 8.14, required])
{% else %}
{% endif %}

/**** Rule 9.1 (Mand) ************/

{% if KVAl59 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e644                   /* Symbol may not have been initialized */
    +elib(644)
    -append(644,[MISRA 2012 Rule 9.1, mandatory])
    +e771                   /* Symbol conceivably not initialized */
    +elib(771)
    -append(771,[MISRA 2012 Rule 9.1, mandatory])
    +e530                   /* Symbol not initialized */
    +elib(530)
    -append(530,[MISRA 2012 Rule 9.1, mandatory])
    -specific(+e644 +e771 +e530,)
{% else %}
{% endif %}

/**** Rule 9.2 (Req) ************/

{% if KVAl60 == 1 %}
    +e9069                  /* omitted braces within an initializer */
    +elib(9069)
    -append(9069,[MISRA 2012 Rule 9.2, required])
{% else %}
{% endif %}

/**** Rule 9.3 (Req) ************/

{% if KVAl61 == 1 %}
    +e9068                  /* too few initializers */
    +elib(9068)
    -append(9068,[MISRA 2012 Rule 9.3, required])
{% else %}
{% endif %}

/**** Rule 9.4 (Req) ************/

{% if KVAl62 == 1 %}
    +e485                               /* duplicate initialization */
    +elib(485)
    -append(485,[MISRA 2012 Rule 9.4, required])
{% else %}
{% endif %}

/**** Rule 9.5 (Req) ************/

{% if KVAl63 == 1 %}
    +e9054                              /* designated initializer and dimensionless array */
    +elib(9054)
    -append(9054,[MISRA 2012 Rule 9.5, required])
{% else %}
{% endif %}

/**** Rule 10.1 (Req) ************/

{% if KVAl64 == 1 %}
    +e48				/* bad type */
    +elib(48)
    -append(48,[MISRA 2012 Rule 10.1, required])
    +e9027                              /* unpermitted operand */
    +elib(9027)
    -append(9027,[MISRA 2012 Rule 10.1, required])
{% else %}
{% endif %}

/**** Rule 10.2 (Req) ************/

{% if KVAl65 == 1 %}
    +e9028                              /* unpermitted arithmetic */
    +elib(9028)
    -append(9028,[MISRA 2012 Rule 10.2, required])
{% else %}
{% endif %}

/**** Rule 10.3 (Req) ************/

{% if KVAl66 == 1 %}
    +e9034                              /* expression assigned to narrower or different essential type */
    +elib(9034)
    // Note: the following -d options for true and false don't apply
    //       to C90 and should be commented out if not using C99
    +"dtrue=/*lint -save -e921 */(_Bool) 1/*lint -restore */"    // exception
    +"dfalse=/*lint -save -e921 */(_Bool) 0/*lint -restore */"   // exception
    -append(9034,[MISRA 2012 Rule 10.3, required])
{% else %}
{% endif %}

/**** Rule 10.4 (Req) ************/

{% if KVAl67 == 1 %}
    +e9029                              /* mismatched essential type */
    +elib(9029)
    -append(9029,[MISRA 2012 Rule 10.4, required])
{% else %}
{% endif %}

/**** Rule 10.5 (Adv) ************/

{% if KVAl68 == 1 %}
    +e9030                              /* impermissible cast */
    +elib(9030)
    -append(9030,[MISRA 2012 Rule 10.5, advisory])
{% else %}
{% endif %}

/**** Rule 10.6 (Req) ************/

{% if KVAl69 == 1 %}
    +e9031                              /* composite expression assigned to wider essential type */
    +elib(9031)
    -append(9031,[MISRA 2012 Rule 10.6, required])
{% else %}
{% endif %}

/**** Rule 10.7 (Req) ************/

{% if KVAl70 == 1 %}
    +e9032                              /* composite expression with smaller essential type than other operand*/
    +elib(9032)
    -append(9032,[MISRA 2012 Rule 10.7, required])
{% else %}
{% endif %}

/**** Rule 10.8 (Req) ************/

{% if KVAl71 == 1 %}
    +e9033                              /* impermissible cast of composite expression */
    +elib(9033)
    -append(9033,[MISRA 2012 Rule 10.8, required])
{% else %}
{% endif %}

/**** Rule 11.1 (Req) ************/

{% if KVAl72 == 1 %}
    +e9074                   /* conversion between a pointer to function and another type */
    +elib(9074)
    --emacro((9074),NULL)    /*  explicit exception  */
    -append(9074,[MISRA 2012 Rule 11.1, required])
{% else %}
{% endif %}

/**** Rule 11.2 (Req) ************/

{% if KVAl73 == 1 %}
    +e9076                   /* conversion between a pointer to incomplete type and another type */
    +elib(9076)
    --emacro((9076),NULL)    /*  explicit exception  */
    -append(9076,[MISRA 2012 Rule 11.2, required])
{% else %}
{% endif %}

/**** Rule 11.3 (Req) ************/

{% if KVAl74 == 1 %}
    +e9087         /* cast from pointer to pointer */
    +elib(9087)
    -append(9087,[MISRA 2012 Rule 11.3, required])
{% else %}
{% endif %}

/**** Rule 11.4 (Adv) ************/

{% if KVAl75 == 1 %}
    +e9078                        /* cast pointer/integer */
    +elib(9078)
    -append(9078,[MISRA 2012 Rule 11.4, advisory])
{% else %}
{% endif %}

/**** Rule 11.5 (Adv) ************/

{% if KVAl76 == 1 %}
    +e9079         /* cast from pointer to pointer */
    +elib(9079)
    -append(9079,[MISRA 2012 Rule 11.5, advisory])
{% else %}
{% endif %}

/**** Rule 11.6 (Req) ************/

{% if KVAl77 == 1 %}
    +e923                        /* cast pointer/non-pointer */
    +elib(923)
    -append(923,[MISRA 2012 Rule 11.6, required])
{% else %}
{% endif %}

/**** Rule 11.7 (Req) ************/

{% if KVAl78 == 1 %}
    +e68                        /* cast pointer/float */
    +elib(68)
    -append(68,[MISRA 2012 Rule 11.7, required])
    +e70                        /* cast pointer/float */
    +elib(70)
    -append(70,[MISRA 2012 Rule 11.7, required])
{% else %}
{% endif %}

/**** Rule 11.8 (Req) ************/

{% if KVAl79 == 1 %}
    +e9005                              /* attempt to cast away const/volatile from pointer or reference */
    +elib(9005)
    -append(9005,[MISRA 2012 Rule 11.8, required])
{% else %}
{% endif %}

/**** Rule 11.9 (Req) ************/

{% if KVAl80 == 1 %}
    +e910       /* conversion from 0 to pointer */
    +elib(910)
    --emacro((910),NULL)    /*  explicit exception  */
    -append(910,[MISRA 2012 Rule 11.9, required])
    +e9080      /* integer null pointer constant */
    +elib(9080)
    -append(9080,[MISRA 2012 Rule 11.9, required])
{% else %}
{% endif %}

/**** Rule 12.1 (Adv) ************/

{% if KVAl81 == 1 %}
    +e9050        /* dependence placed on precedence */
    +elib(9050)
    -append(9050,[MISRA 2012 Rule 12.1, advisory])
{% else %}
{% endif %}

/**** Rule 12.2 (Req) ************/

{% if KVAl82 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e598           /* excessive left shift */
    +elib(598)
    -append(598,[MISRA 2012 Rule 12.2, required])
    +e9053          /* shift value exceeds size of LHS */
    +elib(9053)
    -append(9053,[MISRA 2012 Rule 12.2, required])
{% else %}
{% endif %}

/**** Rule 12.3 (Adv) ************/

{% if KVAl83 == 1 %}
    +e9008                              /* comma operator used */
    +elib(9008)
    -append(9008,[MISRA 2012 Rule 12.3, advisory])
{% else %}
{% endif %}

/**** Rule 12.4 (Adv) ************/

{% if KVAl84 == 1 %}
    +elib(648)      /* Overflow in computing constant */
    +estring(648,unsigned addition)
    +estring(648,unsigned multiplication)
    +estring(648,unsigned sub.)
    +estring(648,unsigned shift left)
    +estring(648,unsigned shift right)
    -append(648,[MISRA 2012 Rule 12.4, advisory])
{% else %}
{% endif %}

/**** Rule 13.1 (Req) ************/

{% if KVAl85 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e446                              /* side effect in initializer */
    +elib(446)
    -append(446,[MISRA 2012 Rule 13.1, required])
{% else %}
{% endif %}

/**** Rule 13.2 (Req) ************/

{% if KVAl86 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e564			/* variable depends on order of evaluation */
    +elib(564)
    -append(564,[MISRA 2012 Rule 13.2, required])
    +e864			/* variable possibly depends on order of evaluation */
    +elib(864)
    -append(864,[MISRA 2012 Rule 13.2, required])
    +e931	       	    	/* both sides have side effects */
    +elib(931)
    -append(931,[MISRA 2012 Rule 13.2, required])
{% else %}
{% endif %}

/**** Rule 13.3 (Adv) ************/

{% if KVAl87 == 1 %}
    +e9049                              /* increment/decrement combined with other operations */
    +elib(9049)
    -append(9049,[MISRA 2012 Rule 13.3, advisory])
{% else %}
{% endif %}

/**** Rule 13.4 (Adv) ************/

{% if KVAl88 == 1 %}
    +e720                    /* Boolean test of assignment */
    +elib(720)
    -append(720,[MISRA 2012 Rule 13.4, advisory])
    +e820                    /* Boolean test of parenthesized assignment */
    +elib(820)
    -append(820,[MISRA 2012 Rule 13.4, advisory])
    +e9084                   /* assignment used inside larger
                                expression */
    +elib(9084)
    -append(9084,[MISRA 2012 Rule 13.4, advisory])
{% else %}
{% endif %}

/**** Rule 13.5 (Req) ************/

{% if KVAl89 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e9007                              /* side effects on right hand side of logical operator */
    +elib(9007)
    -append(9007,[MISRA 2012 Rule 13.5, required])
{% else %}
{% endif %}

/**** Rule 13.6 (Mand) ************/

{% if KVAl90 == 1 %}
    +e9006                              /* sizeof used with expression with side effect */
    +elib(9006)
    -append(9006,[MISRA 2012 Rule 13.6, mandatory])
    +e9089                              /* potential side-effect in argument to sizeof */
    +elib(9089)
    -append(9089,[MISRA 2012 Rule 13.6, mandatory])
{% else %}
{% endif %}

/**** Rule 14.1 (Req) ************/

{% if KVAl91 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e9009                              /* floating point variable used as loop counter */
    +elib(9009)
    -append(9009,[MISRA 2012 Rule 14.1, required])
{% else %}
{% endif %}

/**** Rule 14.2 (Req) ************/

{% if KVAl92 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e850           /* index variable modified in body of for loop */
    +elib(850)
    -append(850,[MISRA 2012 Rule 14.2, required])
{% else %}
{% endif %}

/**** Rule 14.3 (Req) ************/

{% if KVAl93 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e685			/* relational always evaluates to true/false */
    +elib(685)
    -append(685,[MISRA 2012 Rule 14.3, required])
    +e774			/* boolean always evaluates to true/false */
    +elib(774)
    -append(774,[MISRA 2012 Rule 14.3, required])
    +e650			/* constant out of range for operator */
    +elib(650)
    -append(650,[MISRA 2012 Rule 14.3, required])
{% else %}
{% endif %}

/**** Rule 14.4 (Req) ************/

{% if KVAl94 == 1 %}
    +e9036                              /* condition should have essentially Boolean type */
    +elib(9036)
    -append(9036,[MISRA 2012 Rule 14.4, required])
{% else %}
{% endif %}

/**** Rule 15.1 (Adv) ************/

{% if KVAl95 == 1 %}
    +e801       /* use of 'goto' is deprecated */
    +elib(801)
    -append(801,[MISRA 2012 Rule 15.1, advisory])
{% else %}
{% endif %}

/**** Rule 15.2 (Req) ************/

{% if KVAl96 == 1 %}
    +e9064      /* goto references earlier label */
    +elib(9064)
    -append(9064,[MISRA 2012 Rule 15.2, required])
{% else %}
{% endif %}

/**** Rule 15.3 (Req) ************/

{% if KVAl97 == 1 %}
    +e9041                      /* goto not nested in the same block as label */
    +elib(9041)
    -append(9041,[MISRA 2012 Rule 15.3, required])
{% else %}
{% endif %}

/**** Rule 15.4 (Adv) ************/

{% if KVAl98 == 1 %}
    +e9011                              /* more than one 'break' terminates loop */
    +elib(9011)
    -append(9011,[MISRA 2012 Rule 15.4, advisory])
{% else %}
{% endif %}

/**** Rule 15.5 (Adv) ************/

{% if KVAl99 == 1 %}
    +e904                   /* return before function end */
    +elib(904)
    -append(904,[MISRA 2012 Rule 15.5, advisory])
{% else %}
{% endif %}

/**** Rule 15.6 (Req) ************/

{% if KVAl100 == 1 %}
    +e9012                   /* sub-statement should be a compound statement */
    +elib(9012)
    -append(9012,[MISRA 2012 Rule 15.6, required])
{% else %}
{% endif %}

/**** Rule 15.7 (Req) ************/

{% if KVAl101 == 1 %}
    +e9013                   /* no 'else' at end of 'if ... else if' chain */
    +elib(9013)
    -append(9013,[MISRA 2012 Rule 15.7, required])
    +e9063                   /* no comment or action in else-branch */
    +elib(9063)
    -append(9063,[MISRA 2012 Rule 15.7, required])
{% else %}
{% endif %}

/**** Rule 16.1 (Req) ************/

{% if KVAl102 == 1 %}
    +e616                  /* control flows into case/default */
    +elib(616)
    -append(616,[MISRA 2012 Rule 16.1, required])
    +e744                  /* switch statement has no default */
    +elib(744)
    -append(744,[MISRA 2012 Rule 16.1, required])
    +e764                  /* switch does not have a case */
    +elib(764)
    -append(764,[MISRA 2012 Rule 16.1, required])
    +e825                  /* control flows into case/default without -fallthrough comment */
    +elib(825)
    -append(825,[MISRA 2012 Rule 16.1, required])
    +e9014                 /* default missing from switch */
    +elib(9014)
    -append(9014,[MISRA 2012 Rule 16.1, required])
    +e9042                 /* departure from MISRA switch syntax */
    +elib(9042)
    -append(9042,[MISRA 2012 Rule 16.1, required])
    +e9077                 /* missing unconditional break */
    +elib(9077)
    -append(9077,[MISRA 2012 Rule 16.1, required])
    +e9081                 /* too few independent cases for switch */
    +elib(9081)
    -append(9081,[MISRA 2012 Rule 16.1, required])
    +e9082                 /* switch statement should either begin or end with default label */
    +elib(9082)
    -append(9082,[MISRA 2012 Rule 16.1, required])
    +e9085                 /* statement or comment should appear in default case */
    +elib(9085)
    -append(9085,[MISRA 2012 Rule 16.1, required])
{% else %}
{% endif %}

/**** Rule 16.2 (Req) ************/

{% if KVAl103 == 1 %}
    +e44                  /* Need a switch */
    +elib(44)
    -append(44,[MISRA 2012 Rule 16.2, required])
    +e9055                /* enclosing statement is not a switch */
    +elib(9055)
    -append(9055,[MISRA 2012 Rule 16.2, required])
{% else %}
{% endif %}

/**** Rule 16.3 (Req) ************/

{% if KVAl104 == 1 %}
    +e616                 /* control flows into case/default */
    +elib(616)
    -append(616,[MISRA 2012 Rule 16.3, required])
    +e825                 /* control flows into case/default without -fallthrough comment */
    +elib(825)
    -append(825,[MISRA 2012 Rule 16.3, required])
    +e9077                /* missing unconditional break */
    +elib(9077)
    -append(9077,[MISRA 2012 Rule 16.3, required])
    +e9090                /* missing unconditional break */
    +elib(9090)
    -append(9090,[MISRA 2012 Rule 16.3, required])
{% else %}
{% endif %}

/**** Rule 16.4 (Req) ************/

{% if KVAl105 == 1 %}
    +e744            /* switch statement has no default */
    +elib(744)
    -append(744,[MISRA 2012 Rule 16.4, required])
    +e9014            /* switch statement has no default */
    +elib(9014)
    -append(9014,[MISRA 2012 Rule 16.4, required])
    +e9085            /* default case has no statement nor comment */
    +elib(9085)
    -append(9085,[MISRA 2012 Rule 16.4, required])
{% else %}
{% endif %}

/**** Rule 16.5 (Req) ************/

{% if KVAl106 == 1 %}
    +e9082                   /* default should be first or last */
    +elib(9082)
    -append(9082,[MISRA 2012 Rule 16.5, required])
{% else %}
{% endif %}

/**** Rule 16.6 (Req) ************/

{% if KVAl107 == 1 %}
    +e764            /* switch does not have a case */
    +elib(764)
    -append(764,[MISRA 2012 Rule 16.6, required])
    +e9081           /* too few cases */
    +elib(9081)
    -append(9081,[MISRA 2012 Rule 16.6, required])
{% else %}
{% endif %}

/**** Rule 16.7 (Req) ************/

{% if KVAl108 == 1 %}
    +e483                   /* boolean value in switch expression */
    +elib(483)
    -append(483,[MISRA 2012 Rule 16.7, required])
{% else %}
{% endif %}

/**** Rule 17.1 (Req) ************/

{% if KVAl109 == 1 %}
    +e829       /* warn on header usage */
    +elib(829)
    +headerwarn(stdarg.h)
    -append(829(stdarg.h),[MISRA 2012 Rule 17.1, required])
    -deprecate(macro,va_arg,[MISRA 2012 Rule 17.1, required])
    -deprecate(macro,va_start,[MISRA 2012 Rule 17.1, required])
    -deprecate(macro,va_end,[MISRA 2012 Rule 17.1, required])
    -deprecate(macro,va_copy,[MISRA 2012 Rule 17.1, required])
{% else %}
{% endif %}

/**** Rule 17.2 (Req) ************/

{% if KVAl110 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e9070
    -append(9070,[MISRA 2012 Rule 17.2, required])
{% else %}
{% endif %}

/**** Rule 17.3 (Mand) ************/

{% if KVAl111 == 1 %}
    +e718  	      		 /* symbol undeclared, assumed to return int */
    +elib(718)
    -append(718,[MISRA 2012 Rule 17.3, mandatory])
{% else %}
{% endif %}

/**** Rule 17.4 (Mand) ************/

{% if KVAl112 == 1 %}
    +e533                /* function should return a value */
    +elib(533)
    -append(533,[MISRA 2012 Rule 17.4, mandatory])
{% else %}
{% endif %}

/**** Rule 17.5 (Adv) ************/

{% if KVAl113 == 1 %}
    /* MISRA has declared this rule to be "undecidable". */
{% else %}
{% endif %}

/**** Rule 17.6 (Mand) ************/

{% if KVAl114 == 1 %}
    +e9043                   /* static between brackets of array declaration */
    +elib(9043)
    -append(9043,[MISRA 2012 Rule 17.6, mandatory])
{% else %}
{% endif %}

/**** Rule 17.7 (Req) ************/

{% if KVAl115 == 1 %}
    +e534               /* ignoring return value of function */
    +elib(534)
    -append(534,[MISRA 2012 Rule 17.7, required])
{% else %}
{% endif %}

/**** Rule 17.8 (Adv) ************/

{% if KVAl116 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e9044               /* function parameter modified */
    +elib(9044)
    -append(9044,[MISRA 2012 Rule 17.8, advisory])
{% else %}
{% endif %}

/**** Rule 18.1 (Req) ************/

{% if KVAl117 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e415          /* out-of-bounds pointer */
    +elib(415)
    -append(415,[MISRA 2012 Rule 18.1, required])
    +e416          /* out-of-bounds pointer */
    +elib(416)
    -append(416,[MISRA 2012 Rule 18.1, required])
    +e428          /* out-of-bounds pointer */
    +elib(428)
    -append(428,[MISRA 2012 Rule 18.1, required])
    +e661          /* out-of-bounds pointer */
    +elib(661)
    -append(661,[MISRA 2012 Rule 18.1, required])
    +e662          /* out-of-bounds pointer */
    +elib(662)
    -append(662,[MISRA 2012 Rule 18.1, required])
    +e676          /* out-of-bounds pointer */
    +elib(676)
    -append(676,[MISRA 2012 Rule 18.1, required])
    +e796          /* out-of-bounds pointer */
    +elib(796)
    -append(796,[MISRA 2012 Rule 18.1, required])
    +e797          /* out-of-bounds pointer */
    +elib(797)
    -append(797,[MISRA 2012 Rule 18.1, required])
    +e817          /* out-of-bounds pointer */
    +elib(817)
    -append(817,[MISRA 2012 Rule 18.1, required])
{% else %}
{% endif %}

/**** Rule 18.2 (Req) ************/

{% if KVAl118 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e946          /* relational or subtract operator applied to pointers */
    +elib(946)
    -append(946,[MISRA 2012 Rule 18.2, required])
    +e947          /* relational or subtract operator applied to pointers */
    +elib(947)
    -append(947,[MISRA 2012 Rule 18.2, required])
{% else %}
{% endif %}

/**** Rule 18.3 (Req) ************/

{% if KVAl119 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e946          /* relational or subtract operator applied to pointers */
    +elib(946)
    -append(946,[MISRA 2012 Rule 18.3, required])
    +e947          /* relational or subtract operator applied to pointers */
    +elib(947)
    -append(947,[MISRA 2012 Rule 18.3, required])
{% else %}
{% endif %}

/**** Rule 18.4 (Adv) ************/

{% if KVAl120 == 1 %}
    +e9016                   /* pointer arithmetic other than array indexing used */
    +elib(9016)
    -append(9016,[MISRA 2012 Rule 18.4, advisory])
{% else %}
{% endif %}

/**** Rule 18.5 (Adv) ************/

{% if KVAl121 == 1 %}
    +e9025                   /* more than two pointer indirection levels used */
    +elib(9025)
    -append(9025,[MISRA 2012 Rule 18.5, advisory])
{% else %}
{% endif %}

/**** Rule 18.6 (Req) ************/

{% if KVAl122 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e733               /* assigning address of auto to outer scope symbol */
    +elib(733)
    -append(733,[MISRA 2012 Rule 18.6, required])
    +e789               /* assigning address of auto to static */
    +elib(789)
    -append(789,[MISRA 2012 Rule 18.6, required])
    +e604               /* returning address of auto variable */
    +elib(604)
    -append(604,[MISRA 2012 Rule 18.6, required])
{% else %}
{% endif %}

/**** Rule 18.7 (Req) ************/

{% if KVAl123 == 1 %}
    +e9038                   /* flexible array member declared */
    +elib(9038)
    -append(9038,[MISRA 2012 Rule 18.7, required])
{% else %}
{% endif %}

/**** Rule 18.8 (Req) ************/

{% if KVAl124 == 1 %}
    +e9035                   /* variable length array declared */
    +elib(9035)
    -append(9035,[MISRA 2012 Rule 18.8, required])
{% else %}
{% endif %}

/**** Rule 19.1 (Mand) ************/

{% if KVAl125 == 1 %}
    /* MISRA has declared this rule to be "undecidable". */
{% else %}
{% endif %}

/**** Rule 19.2 (Adv) ************/

{% if KVAl126 == 1 %}
    +e9018                   /* union type/object declared */
    +elib(9018)
    -append(9018,[MISRA 2012 Rule 19.2, advisory])
{% else %}
{% endif %}

/**** Rule 20.1 (Adv) ************/

{% if KVAl127 == 1 %}
    +e9019                   /* declaration before #include */
    +elib(9019)
    -append(9019,[MISRA 2012 Rule 20.1, advisory])
{% else %}
{% endif %}

/**** Rule 20.2 (Req) ************/

{% if KVAl128 == 1 %}
    +e9020                   /* header file name with non-standard character */
    +elib(9020)
    -append(9020,[MISRA 2012 Rule 20.2, required])
    /*  Note: If your system requires the '\' be used as a directory
        separator, uncomment the following option.
     */
    //  -estring(9020,\)
{% else %}
{% endif %}

/**** Rule 20.3 (Req) ************/

{% if KVAl129 == 1 %}
    +e12                    /* Need < or " after #include */
    +elib(12)
    -append(12,[MISRA 2012 Rule 20.3, required])
    +e9086                    /* multiple arguments after #include */
    +elib(9086)
    -append(9086,[MISRA 2012 Rule 20.3, required])
{% else %}
{% endif %}

/**** Rule 20.4 (Req) ************/

{% if KVAl130 == 1 %}
    +e9051                              /* macro with same name as a keyword */
    +elib(9051)
    -append(9051,[MISRA 2012 Rule 20.4, required])
{% else %}
{% endif %}

/**** Rule 20.5 (Adv) ************/

{% if KVAl131 == 1 %}
    +e9021                   /* use of '#undef' is discouraged */
    +elib(9021)
    -append(9021,[MISRA 2012 Rule 20.5, advisory])
{% else %}
{% endif %}

/**** Rule 20.6 (Req) ************/

{% if KVAl132 == 1 %}
    +e436   /* preprocessor directive in invocation of macro */
    +elib(436)
    -append(436,[MISRA 2012 Rule 20.6, required])
{% else %}
{% endif %}

/**** Rule 20.7 (Req) ************/

{% if KVAl133 == 1 %}
    +e665                   /* expression passed to unparenthesized macro */
    +elib(665)
    -append(665,[MISRA 2012 Rule 20.7, required])
{% else %}
{% endif %}

/**** Rule 20.8 (Req) ************/

{% if KVAl134 == 1 %}
    +e9037                  /* conditional of #if/#elif does not evaluate to 0 or 1 */
    +elib(9037)
    -append(9037,[MISRA 2012 Rule 20.8, required])
{% else %}
{% endif %}

/**** Rule 20.9 (Req) ************/

{% if KVAl135 == 1 %}
    +e553   /* Undefined preprocessor variable, assumed 0 */
    +elib(553)
    -append(553,[MISRA 2012 Rule 20.9, required])
{% else %}
{% endif %}

/**** Rule 20.10 (Adv) ************/

{% if KVAl136 == 1 %}
    +e9024                   /* '#/##' operators used */
    +elib(9024)
    -append(9024,[MISRA 2012 Rule 20.10, advisory])
{% else %}
{% endif %}

/**** Rule 20.11 (Req) ************/

{% if KVAl137 == 1 %}
    +e484                   /* stringize operator followed by macro parameter followed by pasting operator */
    +elib(484)
    -append(484,[MISRA 2012 Rule 20.11, required])
{% else %}
{% endif %}

/**** Rule 20.12 (Req) ************/

{% if KVAl138 == 1 %}
    +e9015                              /* macro argument is used both with and without '#/##' and is subject to further replacement */
    +elib(9015)
    -append(9015,[MISRA 2012 Rule 20.12, required])
{% else %}
{% endif %}

/**** Rule 20.13 (Req) ************/

{% if KVAl139 == 1 %}
    +e544       /* endif or else not followed by EOL */
    +elib(544)
    -append(544,[MISRA 2012 Rule 20.13, required])
    +e16        /* # directive not followed by recognizable word */
    +elib(16)
    -append(16,[MISRA 2012 Rule 20.13, required])
    /* other parts of this rule such as a syntax check of the disabled
       portions of the code do not seem to be statically checkable
     */
{% else %}
{% endif %}

/**** Rule 20.14 (Req) ************/

{% if KVAl140 == 1 %}
    +e405       /* #if/#ifdef/#ifndef not closed off */
    +elib(405)
    -append(405,[MISRA 2012 Rule 20.14, required])
{% else %}
{% endif %}

/**** Rule 21.1 (Req) ************/

{% if KVAl141 == 1 %}
    +e136       /* Illegal macro name */
    +elib(136)
    -append(136,[MISRA 2012 Rule 21.1, required])
    /*  Undefining standard library macros is covered by rule 20.5.  */
    /*  Defining/redefining reserved/standard identifiers is covered
        by rules 20.4 and 21.2.
     */
    +e9071      /* defined macro reserved to the compiler */
    +elib(9071)
    -append(9071,[MISRA 2012 Rule 21.1, required])
    // explicit exemptions
    -estring(9071,* because *)
    -estring(9071,cerf)
    -estring(9071,cerfc)
    -estring(9071,cexp2)
    -estring(9071,cexpm1)
    -estring(9071,clog10)
    -estring(9071,clog1p)
    -estring(9071,clog2)
    -estring(9071,clgamma)
    -estring(9071,ctgamma)
    -estring(9071,cerff)
    -estring(9071,cerfcf)
    -estring(9071,cexp2f)
    -estring(9071,cexpm1f)
    -estring(9071,clog10f)
    -estring(9071,clog1pf)
    -estring(9071,clog2f)
    -estring(9071,clgammaf)
    -estring(9071,ctgammaf)
    -estring(9071,cerfl)
    -estring(9071,cerfcl)
    -estring(9071,cexp2l)
    -estring(9071,cexpm1l)
    -estring(9071,clog10l)
    -estring(9071,clog1pl)
    -estring(9071,clog2l)
    -estring(9071,clgammal)
    -estring(9071,ctgammal)
    -estring(9071,E0*)
    -estring(9071,E1*)
    -estring(9071,E2*)
    -estring(9071,E3*)
    -estring(9071,E4*)
    -estring(9071,E5*)
    -estring(9071,E6*)
    -estring(9071,E7*)
    -estring(9071,E8*)
    -estring(9071,E9*)
    -estring(9071,NDEBUG)
    -estring(9071,PRIa*)
    -estring(9071,PRIb*)
    -estring(9071,PRIc*)
    -estring(9071,PRId*)
    -estring(9071,PRIe*)
    -estring(9071,PRIf*)
    -estring(9071,PRIg*)
    -estring(9071,PRIh*)
    -estring(9071,PRIi*)
    -estring(9071,PRIj*)
    -estring(9071,PRIk*)
    -estring(9071,PRIl*)
    -estring(9071,PRIm*)
    -estring(9071,PRIn*)
    -estring(9071,PRIo*)
    -estring(9071,PRIp*)
    -estring(9071,PRIq*)
    -estring(9071,PRIr*)
    -estring(9071,PRIs*)
    -estring(9071,PRIt*)
    -estring(9071,PRIu*)
    -estring(9071,PRIv*)
    -estring(9071,PRIw*)
    -estring(9071,PRIx*)
    -estring(9071,PRIy*)
    -estring(9071,PRIz*)
    -estring(9071,PRIX*)
    -estring(9071,SCNa*)
    -estring(9071,SCNb*)
    -estring(9071,SCNc*)
    -estring(9071,SCNd*)
    -estring(9071,SCNe*)
    -estring(9071,SCNf*)
    -estring(9071,SCNg*)
    -estring(9071,SCNh*)
    -estring(9071,SCNi*)
    -estring(9071,SCNj*)
    -estring(9071,SCNk*)
    -estring(9071,SCNl*)
    -estring(9071,SCNm*)
    -estring(9071,SCNn*)
    -estring(9071,SCNo*)
    -estring(9071,SCNp*)
    -estring(9071,SCNq*)
    -estring(9071,SCNr*)
    -estring(9071,SCNs*)
    -estring(9071,SCNt*)
    -estring(9071,SCNu*)
    -estring(9071,SCNv*)
    -estring(9071,SCNw*)
    -estring(9071,SCNx*)
    -estring(9071,SCNy*)
    -estring(9071,SCNz*)
    -estring(9071,SCNX*)
    +e9083      /* undefined macro reserved to the compiler */
    +elib(9083)
    -append(9083,[MISRA 2012 Rule 21.1, required])
    // explicit exemptions
    -estring(9083,* because *)
    -estring(9083,cerf)
    -estring(9083,cerfc)
    -estring(9083,cexp2)
    -estring(9083,cexpm1)
    -estring(9083,clog10)
    -estring(9083,clog1p)
    -estring(9083,clog2)
    -estring(9083,clgamma)
    -estring(9083,ctgamma)
    -estring(9083,cerff)
    -estring(9083,cerfcf)
    -estring(9083,cexp2f)
    -estring(9083,cexpm1f)
    -estring(9083,clog10f)
    -estring(9083,clog1pf)
    -estring(9083,clog2f)
    -estring(9083,clgammaf)
    -estring(9083,ctgammaf)
    -estring(9083,cerfl)
    -estring(9083,cerfcl)
    -estring(9083,cexp2l)
    -estring(9083,cexpm1l)
    -estring(9083,clog10l)
    -estring(9083,clog1pl)
    -estring(9083,clog2l)
    -estring(9083,clgammal)
    -estring(9083,ctgammal)
    -estring(9083,E0*)
    -estring(9083,E1*)
    -estring(9083,E2*)
    -estring(9083,E3*)
    -estring(9083,E4*)
    -estring(9083,E5*)
    -estring(9083,E6*)
    -estring(9083,E7*)
    -estring(9083,E8*)
    -estring(9083,E9*)
    -estring(9083,NDEBUG)
    -estring(9083,PRIa*)
    -estring(9083,PRIb*)
    -estring(9083,PRIc*)
    -estring(9083,PRId*)
    -estring(9083,PRIe*)
    -estring(9083,PRIf*)
    -estring(9083,PRIg*)
    -estring(9083,PRIh*)
    -estring(9083,PRIi*)
    -estring(9083,PRIj*)
    -estring(9083,PRIk*)
    -estring(9083,PRIl*)
    -estring(9083,PRIm*)
    -estring(9083,PRIn*)
    -estring(9083,PRIo*)
    -estring(9083,PRIp*)
    -estring(9083,PRIq*)
    -estring(9083,PRIr*)
    -estring(9083,PRIs*)
    -estring(9083,PRIt*)
    -estring(9083,PRIu*)
    -estring(9083,PRIv*)
    -estring(9083,PRIw*)
    -estring(9083,PRIx*)
    -estring(9083,PRIy*)
    -estring(9083,PRIz*)
    -estring(9083,PRIX*)
    -estring(9083,SCNa*)
    -estring(9083,SCNb*)
    -estring(9083,SCNc*)
    -estring(9083,SCNd*)
    -estring(9083,SCNe*)
    -estring(9083,SCNf*)
    -estring(9083,SCNg*)
    -estring(9083,SCNh*)
    -estring(9083,SCNi*)
    -estring(9083,SCNj*)
    -estring(9083,SCNk*)
    -estring(9083,SCNl*)
    -estring(9083,SCNm*)
    -estring(9083,SCNn*)
    -estring(9083,SCNo*)
    -estring(9083,SCNp*)
    -estring(9083,SCNq*)
    -estring(9083,SCNr*)
    -estring(9083,SCNs*)
    -estring(9083,SCNt*)
    -estring(9083,SCNu*)
    -estring(9083,SCNv*)
    -estring(9083,SCNw*)
    -estring(9083,SCNx*)
    -estring(9083,SCNy*)
    -estring(9083,SCNz*)
    -estring(9083,SCNX*)
{% else %}
{% endif %}

/**** Rule 21.2 (Req) ************/

{% if KVAl142 == 1 %}
    +e683       /* complain about #define standard functions */
    +elib(683)
    -append(683,[MISRA 2012 Rule 21.2, required])
    /*  Undefining standard library macros is covered by rule 20.5.  */
    /*  Defining/redefining reserved/standard identifiers is covered
        by rule 20.4 and 21.2.
     */
{% else %}
{% endif %}

/**** Rule 21.3 (Req) ************/

{% if KVAl143 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,calloc,[MISRA 2012 Rule 21.3, required])
    -deprecate(macro,calloc,[MISRA 2012 Rule 21.3, required])
    -deprecate(function,malloc,[MISRA 2012 Rule 21.3, required])
    -deprecate(macro,malloc,[MISRA 2012 Rule 21.3, required])
    -deprecate(function,realloc,[MISRA 2012 Rule 21.3, required])
    -deprecate(macro,realloc,[MISRA 2012 Rule 21.3, required])
    -deprecate(function,free,[MISRA 2012 Rule 21.3, required])
    -deprecate(macro,free,[MISRA 2012 Rule 21.3, required])
{% else %}
{% endif %}

/**** Rule 21.4 (Req) ************/

{% if KVAl144 == 1 %}
    +e829       /* warn on header usage */
    +elib(829)
    +headerwarn(setjmp.h)
    -append(829(setjmp.h),[MISRA 2012 Rule 21.4, required])
    -deprecate(function,setjmp,[MISRA 2012 Rule 21.4, required])
    -deprecate(function,longjmp,[MISRA 2012 Rule 21.4, required])
    -deprecate(macro,setjmp,[MISRA 2012 Rule 21.4, required])
    -deprecate(macro,longjmp,[MISRA 2012 Rule 21.4, required])
{% else %}
{% endif %}

/**** Rule 21.5 (Req) ************/

{% if KVAl145 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,signal,[MISRA 2012 Rule 21.5, required])
    -deprecate(function,raise,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIGABRT,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIGFPE,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIGILL,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIGINT,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIGSEGV,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIGTERM,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIG_DFL,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIG_ERR,[MISRA 2012 Rule 21.5, required])
    -deprecate(macro,SIG_IGN,[MISRA 2012 Rule 21.5, required])
    +e829       /* warn on header usage */
    +elib(829)
    +headerwarn(signal.h)
    -append(829(signal.h),[MISRA 2012 Rule 21.5, required])
{% else %}
{% endif %}

/**** Rule 21.6 (Req) ************/

{% if KVAl146 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,clearerr,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fclose,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,feof,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,ferror,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fflush,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fgetc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fgetpos,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fgets,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fgetwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fgetws,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fopen,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fputc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fputs,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fputwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fputws,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fread,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fseek,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fsetpos,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,freopen,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,ftell,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fwide,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fwprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fwrite,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,fwscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,getc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,getchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,gets,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,getwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,getwchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,perror,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,printf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,putc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,putchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,puts,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,putwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,putwchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,remove,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,rename,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,rewind,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,scanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,setbuf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,setvbuf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,snprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,sprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,sscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,swprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,swscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,tmpfile,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,tmpnam,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,ungetc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,ungetwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vfprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vfscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vfwprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vfwscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vsnprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vsprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vsscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vswprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vswscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vwprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,vwscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,wprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(function,wscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,clearerr,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fclose,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,feof,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,ferror,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fflush,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fgetc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fgets,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fgetpos,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fgetwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fgetws,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fopen,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fputc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fputs,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fputwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fputws,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fread,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fseek,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fsetpos,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,freopen,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,ftell,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fwide,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fwprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fwrite,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,fwscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,getc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,getchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,gets,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,getwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,getwchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,perror,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,printf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,putc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,putchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,puts,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,putwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,putwchar,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,remove,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,rename,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,rewind,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,scanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,setbuf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,setvbuf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,snprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,sprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,sscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,swprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,swscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,tmpfile,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,tmpnam,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,ungetc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,ungetwc,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vfprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vfscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vfwprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vfwscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vsnprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vsprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vsscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vswprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vswscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vwprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,vwscanf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,wprintf,[MISRA 2012 Rule 21.6, required])
    -deprecate(macro,wscanf,[MISRA 2012 Rule 21.6, required])
{% else %}
{% endif %}

/**** Rule 21.7 (Req) ************/

{% if KVAl147 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,atof,[MISRA 2012 Rule 21.7, required])
    -deprecate(function,atoi,[MISRA 2012 Rule 21.7, required])
    -deprecate(function,atol,[MISRA 2012 Rule 21.7, required])
    -deprecate(function,atoll,[MISRA 2012 Rule 21.7, required])
    -deprecate(macro,atof,[MISRA 2012 Rule 21.7, required])
    -deprecate(macro,atoi,[MISRA 2012 Rule 21.7, required])
    -deprecate(macro,atol,[MISRA 2012 Rule 21.7, required])
    -deprecate(macro,atoll,[MISRA 2012 Rule 21.7, required])
{% else %}
{% endif %}

/**** Rule 21.8 (Req) ************/

{% if KVAl148 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,abort,[MISRA 2012 Rule 21.8, required])
    -deprecate(function,exit,[MISRA 2012 Rule 21.8, required])
    -deprecate(function,getenv,[MISRA 2012 Rule 21.8, required])
    -deprecate(function,system,[MISRA 2012 Rule 21.8, required])
    -deprecate(macro,abort,[MISRA 2012 Rule 21.8, required])
    -deprecate(macro,exit,[MISRA 2012 Rule 21.8, required])
    -deprecate(macro,getenv,[MISRA 2012 Rule 21.8, required])
    -deprecate(macro,system,[MISRA 2012 Rule 21.8, required])
{% else %}
{% endif %}

/**** Rule 21.9 (Req) ************/

{% if KVAl149 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,bsearch,[MISRA 2012 Rule 21.9, required])
    -deprecate(function,qsort,[MISRA 2012 Rule 21.9, required])
    -deprecate(macro,bsearch,[MISRA 2012 Rule 21.9, required])
    -deprecate(macro,qsort,[MISRA 2012 Rule 21.9, required])
{% else %}
{% endif %}

/**** Rule 21.10 (Req) ************/

{% if KVAl150 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(macro,wcsftime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,wcsftime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,clock,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,clock,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,difftime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,difftime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,mktime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,mktime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,time,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,time,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,asctime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,asctime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,ctime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,ctime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,gmtime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,gmtime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,localtime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,localtime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,strftime,[MISRA 2012 Rule 21.10, required])
    -deprecate(function,strftime,[MISRA 2012 Rule 21.10, required])
    -deprecate(macro,CLOCKS_PER_SEC,[MISRA 2012 Rule 21.10, required])
    +e829       /* warn on header usage */
    +elib(829)
    +headerwarn(time.h)
    -append(829(time.h),[MISRA 2012 Rule 21.10, required])
{% else %}
{% endif %}

/**** Rule 21.11 (Req) ************/

{% if KVAl151 == 1 %}
    +e829       /* warn on header usage */
    +elib(829)
    +headerwarn(tgmath.h)
    -append(829(tgmath.h),[MISRA 2012 Rule 21.11, required])
{% else %}
{% endif %}

/**** Rule 21.12 (Adv) ************/

{% if KVAl152 == 1 %}
    +e586       /* Symbol is deprecated */
    +elib(586)
    -deprecate(function,feclearexcept,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,feclearexcept,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(function,fegetexceptflag,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,fegetexceptflag,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(function,feraiseexcept,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,feraiseexcept,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(function,fesetexceptflag,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,fesetexceptflag,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(function,fetestexcept,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,fetestexcept,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,FE_INEXACT,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,FE_DIVBYZERO,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,FE_UNDERFLOW,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,FE_OVERFLOW,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,FE_INVALID,[MISRA 2012 Rule 21.12, advisory])
    -deprecate(macro,FE_ALL_EXCEPT,[MISRA 2012 Rule 21.12, advisory])
{% else %}
{% endif %}

/**** Rule 22.1 (Req) ************/

{% if KVAl153 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e429       /* custodial pointer neither free'd nor returned */
    +elib(429)
    -append(429,[MISRA 2012 Rule 22.1, required])
    -function_pair(fopen,fclose)
    +e480       /* no balancing call */
    +elib(480)
    -append(480,[MISRA 2012 Rule 22.1, required])
    +e481       /* different balance call states */
    +elib(481)
    -append(481,[MISRA 2012 Rule 22.1, required])
{% else %}
{% endif %}

/**** Rule 22.2 (Mand) ************/

{% if KVAl154 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e424       /* inappropriate deallocation */
    +elib(424)
    -append(424,[MISRA 2012 Rule 22.2, mandatory])
    +e449       /* pointer previously deallocated */
    +elib(449)
    -append(449,[MISRA 2012 Rule 22.2, mandatory])
{% else %}
{% endif %}

/**** Rule 22.3 (Req) ************/

{% if KVAl155 == 1 %}
    /* MISRA has declared this rule to be "undecidable". */
{% else %}
{% endif %}

/**** Rule 22.4 (Mand) ************/

{% if KVAl156 == 1 %}
    /* MISRA has declared this rule to be "undecidable". */
{% else %}
{% endif %}

/**** Rule 22.5 (Mand) ************/

{% if KVAl157 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
       Software provides the following message to assist:
     */
    +e9047   /* FILE pointer dereferenced */
    +elib(9047)
    -append(9047,[MISRA 2012 Rule 22.5, mandatory])
{% else %}
{% endif %}

/**** Rule 22.6 (Mand) ************/

{% if KVAl158 == 1 %}
    /* While MISRA has declared this rule to be "undecidable", Gimpel
     * Software provides the following options to assist:
     */
    +e449   /* previously deallocated pointer */
    +elib(449)
    -append(449,[MISRA 2012 Rule 22.6, mandatory])
{% else %}
{% endif %}
