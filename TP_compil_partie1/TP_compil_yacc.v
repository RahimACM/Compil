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
# TP_compil_yacc.v
# YACC verbose file generated from TP_compil_yacc.y.
# 
# Date: 02/02/18
# Time: 16:29:40
# 
# AYACC Version: 2.07
#############################################################################


##############################################################################
# Rules
##############################################################################

    0  $accept : ligne $end

    1  ligne : expr fin_ligne
    2        | error fin_ligne
    3        | expr error

    4  expr : expr plus expr
    5       | expr moins expr
    6       | expr prod expr
    7       | expr div expr
    8       | expr puis expr
    9       | moins expr
   10       | parenthese_o expr parenthese_f
   11       | nombre
   12       | expr plus error
   13       | error plus expr
   14       | expr moins error
   15       | error moins expr
   16       | expr prod error
   17       | error prod expr
   18       | expr div error
   19       | error div expr
   20       | expr puis error
   21       | error puis expr
   22       | expr error expr
   23       | moins error
   24       | error expr parenthese_f
   25       | parenthese_o error parenthese_f
   26       | parenthese_o expr error
   27       | error


##############################################################################
# States
##############################################################################

state 0
	$accept : . ligne $end

	error  shift 1
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	ligne  goto 5
	expr  goto 6


1: shift-reduce conflict (shift 7, reduce 27) on error
1: shift-reduce conflict (shift 8, reduce 27) on plus
1: shift-reduce conflict (shift 9, reduce 27) on moins
1: shift-reduce conflict (shift 10, reduce 27) on prod
1: shift-reduce conflict (shift 11, reduce 27) on div
1: shift-reduce conflict (shift 12, reduce 27) on puis
1: shift-reduce conflict (shift 13, reduce 27) on fin_ligne
state 1
	ligne : error . fin_ligne
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	fin_ligne  shift 13

	expr  goto 14


state 2
	expr : moins . expr
	expr : moins . error

	error  shift 15
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 16


state 3
	expr : parenthese_o . expr parenthese_f
	expr : parenthese_o . error parenthese_f
	expr : parenthese_o . expr error

	error  shift 17
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 18


state 4
	expr : nombre .  (11)

	.  reduce 11


state 5
	$accept : ligne . $end  (0)

	$end  accept


state 6
	ligne : expr . fin_ligne
	ligne : expr . error
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 19
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	fin_ligne  shift 25


7: shift-reduce conflict (shift 7, reduce 27) on error
7: shift-reduce conflict (shift 8, reduce 27) on plus
7: shift-reduce conflict (shift 9, reduce 27) on moins
7: shift-reduce conflict (shift 10, reduce 27) on prod
7: shift-reduce conflict (shift 11, reduce 27) on div
7: shift-reduce conflict (shift 12, reduce 27) on puis
state 7
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 27

	expr  goto 14


state 8
	expr : error plus . expr

	error  shift 7
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 26


state 9
	expr : moins . expr
	expr : error moins . expr
	expr : moins . error

	error  shift 15
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 27


state 10
	expr : error prod . expr

	error  shift 7
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 28


state 11
	expr : error div . expr

	error  shift 7
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 29


state 12
	expr : error puis . expr

	error  shift 7
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 30


state 13
	ligne : error fin_ligne .  (2)

	.  reduce 2


state 14
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr
	expr : error expr . parenthese_f

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	parenthese_f  shift 32


15: shift-reduce conflict (shift 7, reduce 23) on error
15: shift-reduce conflict (shift 8, reduce 23) on plus
15: shift-reduce conflict (shift 9, reduce 23) on moins
15: shift-reduce conflict (shift 10, reduce 23) on prod
15: shift-reduce conflict (shift 11, reduce 23) on div
15: shift-reduce conflict (shift 12, reduce 23) on puis
15: shift-reduce conflict (shift 7, reduce 27) on error
15: shift-reduce conflict (shift 8, reduce 27) on plus
15: shift-reduce conflict (shift 9, reduce 27) on moins
15: shift-reduce conflict (shift 10, reduce 27) on prod
15: shift-reduce conflict (shift 11, reduce 27) on div
15: shift-reduce conflict (shift 12, reduce 27) on puis
15: reduce-reduce conflict (reduce 23, reduce 27) on parenthese_f
15: reduce-reduce conflict (reduce 23, reduce 27) on fin_ligne
state 15
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : moins error .  (23)
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 23

	expr  goto 14


16: shift-reduce conflict (shift 31, reduce 9) on error
16: shift-reduce conflict (shift 20, reduce 9) on plus
16: shift-reduce conflict (shift 21, reduce 9) on moins
16: shift-reduce conflict (shift 22, reduce 9) on prod
16: shift-reduce conflict (shift 23, reduce 9) on div
16: shift-reduce conflict (shift 24, reduce 9) on puis
state 16
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : moins expr .  (9)
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 9


17: shift-reduce conflict (shift 7, reduce 27) on error
17: shift-reduce conflict (shift 8, reduce 27) on plus
17: shift-reduce conflict (shift 9, reduce 27) on moins
17: shift-reduce conflict (shift 10, reduce 27) on prod
17: shift-reduce conflict (shift 11, reduce 27) on div
17: shift-reduce conflict (shift 12, reduce 27) on puis
17: shift-reduce conflict (shift 33, reduce 27) on parenthese_f
state 17
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : parenthese_o error . parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	parenthese_f  shift 33
	nombre  shift 4

	expr  goto 14


state 18
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : parenthese_o expr . parenthese_f
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr
	expr : parenthese_o expr . error

	error  shift 34
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	parenthese_f  shift 35


state 19
	ligne : expr error .  (3)
	expr : expr error . expr

	error  shift 7
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 3

	expr  goto 36


state 20
	expr : expr plus . expr
	expr : expr plus . error

	error  shift 37
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 38


state 21
	expr : expr moins . expr
	expr : expr moins . error

	error  shift 39
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 40


state 22
	expr : expr prod . expr
	expr : expr prod . error

	error  shift 41
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 42


state 23
	expr : expr div . expr
	expr : expr div . error

	error  shift 43
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 44


state 24
	expr : expr puis . expr
	expr : expr puis . error

	error  shift 45
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 46


state 25
	ligne : expr fin_ligne .  (1)

	.  reduce 1


26: shift-reduce conflict (shift 31, reduce 13) on error
26: shift-reduce conflict (shift 20, reduce 13) on plus
26: shift-reduce conflict (shift 21, reduce 13) on moins
26: shift-reduce conflict (shift 22, reduce 13) on prod
26: shift-reduce conflict (shift 23, reduce 13) on div
26: shift-reduce conflict (shift 24, reduce 13) on puis
state 26
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : error plus expr .  (13)
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 13


27: shift-reduce conflict (shift 31, reduce 9) on error
27: shift-reduce conflict (shift 20, reduce 9) on plus
27: shift-reduce conflict (shift 21, reduce 9) on moins
27: shift-reduce conflict (shift 22, reduce 9) on prod
27: shift-reduce conflict (shift 23, reduce 9) on div
27: shift-reduce conflict (shift 24, reduce 9) on puis
27: shift-reduce conflict (shift 31, reduce 15) on error
27: shift-reduce conflict (shift 20, reduce 15) on plus
27: shift-reduce conflict (shift 21, reduce 15) on moins
27: shift-reduce conflict (shift 22, reduce 15) on prod
27: shift-reduce conflict (shift 23, reduce 15) on div
27: shift-reduce conflict (shift 24, reduce 15) on puis
27: reduce-reduce conflict (reduce 9, reduce 15) on parenthese_f
state 27
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : moins expr .  (9)
	expr : expr . plus error
	expr : expr . moins error
	expr : error moins expr .  (15)
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	fin_ligne  reduce 15
	.  reduce 9


28: shift-reduce conflict (shift 31, reduce 17) on error
28: shift-reduce conflict (shift 20, reduce 17) on plus
28: shift-reduce conflict (shift 21, reduce 17) on moins
28: shift-reduce conflict (shift 22, reduce 17) on prod
28: shift-reduce conflict (shift 23, reduce 17) on div
28: shift-reduce conflict (shift 24, reduce 17) on puis
state 28
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : error prod expr .  (17)
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 17


29: shift-reduce conflict (shift 31, reduce 19) on error
29: shift-reduce conflict (shift 20, reduce 19) on plus
29: shift-reduce conflict (shift 21, reduce 19) on moins
29: shift-reduce conflict (shift 22, reduce 19) on prod
29: shift-reduce conflict (shift 23, reduce 19) on div
29: shift-reduce conflict (shift 24, reduce 19) on puis
state 29
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : error div expr .  (19)
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 19


30: shift-reduce conflict (shift 31, reduce 21) on error
30: shift-reduce conflict (shift 20, reduce 21) on plus
30: shift-reduce conflict (shift 21, reduce 21) on moins
30: shift-reduce conflict (shift 22, reduce 21) on prod
30: shift-reduce conflict (shift 23, reduce 21) on div
30: shift-reduce conflict (shift 24, reduce 21) on puis
state 30
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : error puis expr .  (21)
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 21


state 31
	expr : expr error . expr

	error  shift 7
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4

	expr  goto 36


state 32
	expr : error expr parenthese_f .  (24)

	.  reduce 24


state 33
	expr : parenthese_o error parenthese_f .  (25)

	.  reduce 25


34: shift-reduce conflict (shift 7, reduce 26) on error
34: shift-reduce conflict (shift 2, reduce 26) on moins
state 34
	expr : expr error . expr
	expr : parenthese_o expr error .  (26)

	error  shift 7
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 26

	expr  goto 36


state 35
	expr : parenthese_o expr parenthese_f .  (10)

	.  reduce 10


36: shift-reduce conflict (shift 31, reduce 22) on error
36: shift-reduce conflict (shift 20, reduce 22) on plus
36: shift-reduce conflict (shift 21, reduce 22) on moins
36: shift-reduce conflict (shift 22, reduce 22) on prod
36: shift-reduce conflict (shift 23, reduce 22) on div
36: shift-reduce conflict (shift 24, reduce 22) on puis
state 36
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr error expr .  (22)
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 22


37: shift-reduce conflict (shift 7, reduce 12) on error
37: shift-reduce conflict (shift 8, reduce 12) on plus
37: shift-reduce conflict (shift 9, reduce 12) on moins
37: shift-reduce conflict (shift 10, reduce 12) on prod
37: shift-reduce conflict (shift 11, reduce 12) on div
37: shift-reduce conflict (shift 12, reduce 12) on puis
37: shift-reduce conflict (shift 7, reduce 27) on error
37: shift-reduce conflict (shift 8, reduce 27) on plus
37: shift-reduce conflict (shift 9, reduce 27) on moins
37: shift-reduce conflict (shift 10, reduce 27) on prod
37: shift-reduce conflict (shift 11, reduce 27) on div
37: shift-reduce conflict (shift 12, reduce 27) on puis
37: reduce-reduce conflict (reduce 12, reduce 27) on parenthese_f
37: reduce-reduce conflict (reduce 12, reduce 27) on fin_ligne
state 37
	expr : expr plus error .  (12)
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 12

	expr  goto 14


38: shift-reduce conflict (shift 31, reduce 4) on error
38: shift-reduce conflict (shift 20, reduce 4) on plus
38: shift-reduce conflict (shift 21, reduce 4) on moins
38: shift-reduce conflict (shift 22, reduce 4) on prod
38: shift-reduce conflict (shift 23, reduce 4) on div
38: shift-reduce conflict (shift 24, reduce 4) on puis
state 38
	expr : expr plus expr .  (4)
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 4


39: shift-reduce conflict (shift 7, reduce 14) on error
39: shift-reduce conflict (shift 8, reduce 14) on plus
39: shift-reduce conflict (shift 9, reduce 14) on moins
39: shift-reduce conflict (shift 10, reduce 14) on prod
39: shift-reduce conflict (shift 11, reduce 14) on div
39: shift-reduce conflict (shift 12, reduce 14) on puis
39: shift-reduce conflict (shift 7, reduce 27) on error
39: shift-reduce conflict (shift 8, reduce 27) on plus
39: shift-reduce conflict (shift 9, reduce 27) on moins
39: shift-reduce conflict (shift 10, reduce 27) on prod
39: shift-reduce conflict (shift 11, reduce 27) on div
39: shift-reduce conflict (shift 12, reduce 27) on puis
39: reduce-reduce conflict (reduce 14, reduce 27) on parenthese_f
39: reduce-reduce conflict (reduce 14, reduce 27) on fin_ligne
state 39
	expr : error . plus expr
	expr : expr moins error .  (14)
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 14

	expr  goto 14


40: shift-reduce conflict (shift 31, reduce 5) on error
40: shift-reduce conflict (shift 20, reduce 5) on plus
40: shift-reduce conflict (shift 21, reduce 5) on moins
40: shift-reduce conflict (shift 22, reduce 5) on prod
40: shift-reduce conflict (shift 23, reduce 5) on div
40: shift-reduce conflict (shift 24, reduce 5) on puis
state 40
	expr : expr . plus expr
	expr : expr moins expr .  (5)
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 5


41: shift-reduce conflict (shift 7, reduce 16) on error
41: shift-reduce conflict (shift 8, reduce 16) on plus
41: shift-reduce conflict (shift 9, reduce 16) on moins
41: shift-reduce conflict (shift 10, reduce 16) on prod
41: shift-reduce conflict (shift 11, reduce 16) on div
41: shift-reduce conflict (shift 12, reduce 16) on puis
41: shift-reduce conflict (shift 7, reduce 27) on error
41: shift-reduce conflict (shift 8, reduce 27) on plus
41: shift-reduce conflict (shift 9, reduce 27) on moins
41: shift-reduce conflict (shift 10, reduce 27) on prod
41: shift-reduce conflict (shift 11, reduce 27) on div
41: shift-reduce conflict (shift 12, reduce 27) on puis
41: reduce-reduce conflict (reduce 16, reduce 27) on parenthese_f
41: reduce-reduce conflict (reduce 16, reduce 27) on fin_ligne
state 41
	expr : error . plus expr
	expr : error . moins expr
	expr : expr prod error .  (16)
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 16

	expr  goto 14


42: shift-reduce conflict (shift 31, reduce 6) on error
42: shift-reduce conflict (shift 20, reduce 6) on plus
42: shift-reduce conflict (shift 21, reduce 6) on moins
42: shift-reduce conflict (shift 22, reduce 6) on prod
42: shift-reduce conflict (shift 23, reduce 6) on div
42: shift-reduce conflict (shift 24, reduce 6) on puis
state 42
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr prod expr .  (6)
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 6


43: shift-reduce conflict (shift 7, reduce 18) on error
43: shift-reduce conflict (shift 8, reduce 18) on plus
43: shift-reduce conflict (shift 9, reduce 18) on moins
43: shift-reduce conflict (shift 10, reduce 18) on prod
43: shift-reduce conflict (shift 11, reduce 18) on div
43: shift-reduce conflict (shift 12, reduce 18) on puis
43: shift-reduce conflict (shift 7, reduce 27) on error
43: shift-reduce conflict (shift 8, reduce 27) on plus
43: shift-reduce conflict (shift 9, reduce 27) on moins
43: shift-reduce conflict (shift 10, reduce 27) on prod
43: shift-reduce conflict (shift 11, reduce 27) on div
43: shift-reduce conflict (shift 12, reduce 27) on puis
43: reduce-reduce conflict (reduce 18, reduce 27) on parenthese_f
43: reduce-reduce conflict (reduce 18, reduce 27) on fin_ligne
state 43
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : expr div error .  (18)
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 18

	expr  goto 14


44: shift-reduce conflict (shift 31, reduce 7) on error
44: shift-reduce conflict (shift 20, reduce 7) on plus
44: shift-reduce conflict (shift 21, reduce 7) on moins
44: shift-reduce conflict (shift 22, reduce 7) on prod
44: shift-reduce conflict (shift 23, reduce 7) on div
44: shift-reduce conflict (shift 24, reduce 7) on puis
state 44
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr div expr .  (7)
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 7


45: shift-reduce conflict (shift 7, reduce 20) on error
45: shift-reduce conflict (shift 8, reduce 20) on plus
45: shift-reduce conflict (shift 9, reduce 20) on moins
45: shift-reduce conflict (shift 10, reduce 20) on prod
45: shift-reduce conflict (shift 11, reduce 20) on div
45: shift-reduce conflict (shift 12, reduce 20) on puis
45: shift-reduce conflict (shift 7, reduce 27) on error
45: shift-reduce conflict (shift 8, reduce 27) on plus
45: shift-reduce conflict (shift 9, reduce 27) on moins
45: shift-reduce conflict (shift 10, reduce 27) on prod
45: shift-reduce conflict (shift 11, reduce 27) on div
45: shift-reduce conflict (shift 12, reduce 27) on puis
45: reduce-reduce conflict (reduce 20, reduce 27) on parenthese_f
45: reduce-reduce conflict (reduce 20, reduce 27) on fin_ligne
state 45
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : expr puis error .  (20)
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (27)

	error  shift 7
	plus  shift 8
	moins  shift 9
	prod  shift 10
	div  shift 11
	puis  shift 12
	parenthese_o  shift 3
	nombre  shift 4
	.  reduce 20

	expr  goto 14


46: shift-reduce conflict (shift 31, reduce 8) on error
46: shift-reduce conflict (shift 20, reduce 8) on plus
46: shift-reduce conflict (shift 21, reduce 8) on moins
46: shift-reduce conflict (shift 22, reduce 8) on prod
46: shift-reduce conflict (shift 23, reduce 8) on div
46: shift-reduce conflict (shift 24, reduce 8) on puis
state 46
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr puis expr .  (8)
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 31
	plus  shift 20
	moins  shift 21
	prod  shift 22
	div  shift 23
	puis  shift 24
	.  reduce 8


##############################################################################
# Summary
##############################################################################

State 1 contains 7 shift-reduce conflict(s)
State 7 contains 6 shift-reduce conflict(s)
State 15 contains 12 shift-reduce conflict(s)
State 15 contains 2 reduce-reduce conflict(s)
State 16 contains 6 shift-reduce conflict(s)
State 17 contains 7 shift-reduce conflict(s)
State 26 contains 6 shift-reduce conflict(s)
State 27 contains 12 shift-reduce conflict(s)
State 27 contains 1 reduce-reduce conflict(s)
State 28 contains 6 shift-reduce conflict(s)
State 29 contains 6 shift-reduce conflict(s)
State 30 contains 6 shift-reduce conflict(s)
State 34 contains 2 shift-reduce conflict(s)
State 36 contains 6 shift-reduce conflict(s)
State 37 contains 12 shift-reduce conflict(s)
State 37 contains 2 reduce-reduce conflict(s)
State 38 contains 6 shift-reduce conflict(s)
State 39 contains 12 shift-reduce conflict(s)
State 39 contains 2 reduce-reduce conflict(s)
State 40 contains 6 shift-reduce conflict(s)
State 41 contains 12 shift-reduce conflict(s)
State 41 contains 2 reduce-reduce conflict(s)
State 42 contains 6 shift-reduce conflict(s)
State 43 contains 12 shift-reduce conflict(s)
State 43 contains 2 reduce-reduce conflict(s)
State 44 contains 6 shift-reduce conflict(s)
State 45 contains 12 shift-reduce conflict(s)
State 45 contains 2 reduce-reduce conflict(s)
State 46 contains 6 shift-reduce conflict(s)


11 token(s), 3 nonterminal(s)
28 grammar rule(s), 47 state(s)


##############################################################################
# End of File
##############################################################################
