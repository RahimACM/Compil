#############################################################################
#                         A C A D E M I C   C O P Y
# 
# This file was produced by an ACADEMIC COPY of Parser Generator. It is for
# use in non-commercial software only. An ACADEMIC COPY of Parser Generator
# can only be used by a student, or a member of an academic community. If
# however you want to use Parser Generator for commercial purposes then you
# will need to purchase a license. For more information see the online help or
# go to the Bumble-Bee Software homepage at:
# 
# http://www.bumblebeesoftware.com
# 
# This notice must remain present in the file. It cannot be removed.
#############################################################################

#############################################################################
# TP_compil_lex.v
# Lex verbose file generated from TP_compil_lex.l.
# 
# Date: 02/02/18
# Time: 17:21:53
# 
# ALex Version: 2.07
#############################################################################


#############################################################################
# Expressions
#############################################################################

    1  "+"

    2  "-"

    3  "*"

    4  "/"

    5  "^"

    6  "("

    7  ")"

    8  [0-9]+(\.[0-9]+)?

    9  \n

   10  [ \t]

   11  .


#############################################################################
# States
#############################################################################

state 1
	INITIAL

	0x00 - 0x08 (9)    goto 3
	0x09               goto 4
	0x0a               goto 5
	0x0b - 0x1f (21)   goto 3
	0x20               goto 4
	0x21 - 0x27 (7)    goto 3
	0x28               goto 6
	0x29               goto 7
	0x2a               goto 8
	0x2b               goto 9
	0x2c               goto 3
	0x2d               goto 10
	0x2e               goto 3
	0x2f               goto 11
	0x30 - 0x39 (10)   goto 12
	0x3a - 0x5d (36)   goto 3
	0x5e               goto 13
	0x5f - 0xff (161)  goto 3


state 2
	^INITIAL

	0x00 - 0x08 (9)    goto 3
	0x09               goto 4
	0x0a               goto 5
	0x0b - 0x1f (21)   goto 3
	0x20               goto 4
	0x21 - 0x27 (7)    goto 3
	0x28               goto 6
	0x29               goto 7
	0x2a               goto 8
	0x2b               goto 9
	0x2c               goto 3
	0x2d               goto 10
	0x2e               goto 3
	0x2f               goto 11
	0x30 - 0x39 (10)   goto 12
	0x3a - 0x5d (36)   goto 3
	0x5e               goto 13
	0x5f - 0xff (161)  goto 3


state 3
	match 11


state 4
	match 10


state 5
	match 9


state 6
	match 6


state 7
	match 7


state 8
	match 3


state 9
	match 1


state 10
	match 2


state 11
	match 4


state 12
	0x2e               goto 14
	0x30 - 0x39 (10)   goto 12

	match 8


state 13
	match 5


state 14
	0x30 - 0x39 (10)   goto 15


state 15
	0x30 - 0x39 (10)   goto 15

	match 8


#############################################################################
# Summary
#############################################################################

1 start state(s)
11 expression(s), 15 state(s)


#############################################################################
# End of File
#############################################################################
