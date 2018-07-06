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
# Date: 02/03/18
# Time: 21:28:24
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
   11       | variable
   12       | fonction
   13       | expr plus error
   14       | error plus expr
   15       | expr moins error
   16       | error moins expr
   17       | expr prod error
   18       | error prod expr
   19       | expr div error
   20       | error div expr
   21       | expr puis error
   22       | error puis expr
   23       | expr error expr
   24       | moins error
   25       | error expr parenthese_f
   26       | parenthese_o error parenthese_f
   27       | parenthese_o expr error
   28       | error

   29  fonction : nom_fonction parenthese_o liste parenthese_f
   30           | error parenthese_o liste parenthese_f
   31           | nom_fonction error liste parenthese_f
   32           | nom_fonction parenthese_o error parenthese_f
   33           | nom_fonction parenthese_o liste error

   34  liste : expr separateur_liste liste
   35        | expr
   36        | error separateur_liste liste
   37        | expr error liste
   38        | expr separateur_liste error


##############################################################################
# States
##############################################################################

state 0
	$accept : . ligne $end

	error  shift 1
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 6
	fonction  goto 7
	ligne  goto 8


1: shift-reduce conflict (shift 9, reduce 28) on error
1: shift-reduce conflict (shift 10, reduce 28) on plus
1: shift-reduce conflict (shift 11, reduce 28) on moins
1: shift-reduce conflict (shift 12, reduce 28) on prod
1: shift-reduce conflict (shift 13, reduce 28) on div
1: shift-reduce conflict (shift 14, reduce 28) on puis
1: shift-reduce conflict (shift 16, reduce 28) on fin_ligne
state 1
	ligne : error . fin_ligne
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	fin_ligne  shift 16

	expr  goto 17
	fonction  goto 7


state 2
	expr : moins . expr
	expr : moins . error

	error  shift 18
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 19
	fonction  goto 7


state 3
	expr : parenthese_o . expr parenthese_f
	expr : parenthese_o . error parenthese_f
	expr : parenthese_o . expr error

	error  shift 20
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 21
	fonction  goto 7


state 4
	expr : variable .  (11)

	.  reduce 11


state 5
	fonction : nom_fonction . parenthese_o liste parenthese_f
	fonction : nom_fonction . error liste parenthese_f
	fonction : nom_fonction . parenthese_o error parenthese_f
	fonction : nom_fonction . parenthese_o liste error

	error  shift 22
	parenthese_o  shift 23


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

	error  shift 24
	plus  shift 25
	moins  shift 26
	prod  shift 27
	div  shift 28
	puis  shift 29
	fin_ligne  shift 30


state 7
	expr : fonction .  (12)

	.  reduce 12


state 8
	$accept : ligne . $end  (0)

	$end  accept


9: shift-reduce conflict (shift 9, reduce 28) on error
9: shift-reduce conflict (shift 10, reduce 28) on plus
9: shift-reduce conflict (shift 11, reduce 28) on moins
9: shift-reduce conflict (shift 12, reduce 28) on prod
9: shift-reduce conflict (shift 13, reduce 28) on div
9: shift-reduce conflict (shift 14, reduce 28) on puis
state 9
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 28

	expr  goto 17
	fonction  goto 7


state 10
	expr : error plus . expr

	error  shift 9
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 31
	fonction  goto 7


state 11
	expr : moins . expr
	expr : error moins . expr
	expr : moins . error

	error  shift 18
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 32
	fonction  goto 7


state 12
	expr : error prod . expr

	error  shift 9
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 33
	fonction  goto 7


state 13
	expr : error div . expr

	error  shift 9
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 34
	fonction  goto 7


state 14
	expr : error puis . expr

	error  shift 9
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 35
	fonction  goto 7


state 15
	expr : parenthese_o . expr parenthese_f
	expr : parenthese_o . error parenthese_f
	expr : parenthese_o . expr error
	fonction : error parenthese_o . liste parenthese_f

	error  shift 36
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 37
	fonction  goto 7
	liste  goto 38


state 16
	ligne : error fin_ligne .  (2)

	.  reduce 2


state 17
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

	error  shift 39
	plus  shift 25
	moins  shift 26
	prod  shift 27
	div  shift 28
	puis  shift 29
	parenthese_f  shift 40


18: shift-reduce conflict (shift 9, reduce 24) on error
18: shift-reduce conflict (shift 9, reduce 28) on error
18: reduce-reduce conflict (reduce 24, reduce 28) on plus
18: reduce-reduce conflict (reduce 24, reduce 28) on moins
18: reduce-reduce conflict (reduce 24, reduce 28) on prod
18: reduce-reduce conflict (reduce 24, reduce 28) on div
18: reduce-reduce conflict (reduce 24, reduce 28) on puis
18: reduce-reduce conflict (reduce 24, reduce 28) on parenthese_f
18: reduce-reduce conflict (reduce 24, reduce 28) on separateur_liste
18: reduce-reduce conflict (reduce 24, reduce 28) on fin_ligne
state 18
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : moins error .  (24)
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 24

	expr  goto 17
	fonction  goto 7


19: shift-reduce conflict (shift 39, reduce 9) on error
state 19
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

	error  shift 39
	.  reduce 9


20: shift-reduce conflict (shift 9, reduce 28) on error
20: shift-reduce conflict (shift 10, reduce 28) on plus
20: shift-reduce conflict (shift 11, reduce 28) on moins
20: shift-reduce conflict (shift 12, reduce 28) on prod
20: shift-reduce conflict (shift 13, reduce 28) on div
20: shift-reduce conflict (shift 14, reduce 28) on puis
20: shift-reduce conflict (shift 41, reduce 28) on parenthese_f
state 20
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : parenthese_o error . parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	parenthese_f  shift 41
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 17
	fonction  goto 7


state 21
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

	error  shift 42
	plus  shift 25
	moins  shift 26
	prod  shift 27
	div  shift 28
	puis  shift 29
	parenthese_f  shift 43


state 22
	fonction : nom_fonction error . liste parenthese_f

	error  shift 44
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 45
	fonction  goto 7
	liste  goto 46


state 23
	fonction : nom_fonction parenthese_o . liste parenthese_f
	fonction : nom_fonction parenthese_o . error parenthese_f
	fonction : nom_fonction parenthese_o . liste error

	error  shift 47
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 45
	fonction  goto 7
	liste  goto 48


state 24
	ligne : expr error .  (3)
	expr : expr error . expr

	error  shift 9
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 3

	expr  goto 49
	fonction  goto 7


state 25
	expr : expr plus . expr
	expr : expr plus . error

	error  shift 50
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 51
	fonction  goto 7


state 26
	expr : expr moins . expr
	expr : expr moins . error

	error  shift 52
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 53
	fonction  goto 7


state 27
	expr : expr prod . expr
	expr : expr prod . error

	error  shift 54
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 55
	fonction  goto 7


state 28
	expr : expr div . expr
	expr : expr div . error

	error  shift 56
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 57
	fonction  goto 7


state 29
	expr : expr puis . expr
	expr : expr puis . error

	error  shift 58
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 59
	fonction  goto 7


state 30
	ligne : expr fin_ligne .  (1)

	.  reduce 1


31: shift-reduce conflict (shift 39, reduce 14) on error
state 31
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : error plus expr .  (14)
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 39
	prod  shift 27
	div  shift 28
	puis  shift 29
	.  reduce 14


32: shift-reduce conflict (shift 39, reduce 9) on error
32: shift-reduce conflict (shift 39, reduce 16) on error
32: reduce-reduce conflict (reduce 9, reduce 16) on plus
32: reduce-reduce conflict (reduce 9, reduce 16) on moins
32: reduce-reduce conflict (reduce 9, reduce 16) on prod
32: reduce-reduce conflict (reduce 9, reduce 16) on div
32: reduce-reduce conflict (reduce 9, reduce 16) on puis
32: reduce-reduce conflict (reduce 9, reduce 16) on parenthese_f
state 32
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : moins expr .  (9)
	expr : expr . plus error
	expr : expr . moins error
	expr : error moins expr .  (16)
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 39
	separateur_liste  reduce 16
	fin_ligne  reduce 16
	.  reduce 9


33: shift-reduce conflict (shift 39, reduce 18) on error
state 33
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : error prod expr .  (18)
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 39
	puis  shift 29
	.  reduce 18


34: shift-reduce conflict (shift 39, reduce 20) on error
state 34
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : error div expr .  (20)
	expr : expr . puis error
	expr : expr . error expr

	error  shift 39
	puis  shift 29
	.  reduce 20


35: shift-reduce conflict (shift 39, reduce 22) on error
state 35
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
	expr : error puis expr .  (22)
	expr : expr . error expr

	error  shift 39
	puis  shift 29
	.  reduce 22


36: shift-reduce conflict (shift 9, reduce 28) on error
36: shift-reduce conflict (shift 10, reduce 28) on plus
36: shift-reduce conflict (shift 11, reduce 28) on moins
36: shift-reduce conflict (shift 12, reduce 28) on prod
36: shift-reduce conflict (shift 13, reduce 28) on div
36: shift-reduce conflict (shift 14, reduce 28) on puis
36: shift-reduce conflict (shift 41, reduce 28) on parenthese_f
36: shift-reduce conflict (shift 60, reduce 28) on separateur_liste
state 36
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : parenthese_o error . parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	parenthese_f  shift 41
	variable  shift 4
	nom_fonction  shift 5
	separateur_liste  shift 60

	expr  goto 17
	fonction  goto 7


37: shift-reduce conflict (shift 43, reduce 35) on parenthese_f
state 37
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
	liste : expr . separateur_liste liste
	liste : expr .  (35)
	liste : expr . error liste
	liste : expr . separateur_liste error

	error  shift 61
	plus  shift 25
	moins  shift 26
	prod  shift 27
	div  shift 28
	puis  shift 29
	parenthese_f  shift 43
	separateur_liste  shift 62


state 38
	fonction : error parenthese_o liste . parenthese_f

	parenthese_f  shift 63


state 39
	expr : expr error . expr

	error  shift 9
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 49
	fonction  goto 7


state 40
	expr : error expr parenthese_f .  (25)

	.  reduce 25


state 41
	expr : parenthese_o error parenthese_f .  (26)

	.  reduce 26


42: shift-reduce conflict (shift 9, reduce 27) on error
42: shift-reduce conflict (shift 2, reduce 27) on moins
state 42
	expr : expr error . expr
	expr : parenthese_o expr error .  (27)

	error  shift 9
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 27

	expr  goto 49
	fonction  goto 7


state 43
	expr : parenthese_o expr parenthese_f .  (10)

	.  reduce 10


44: shift-reduce conflict (shift 9, reduce 28) on error
44: shift-reduce conflict (shift 10, reduce 28) on plus
44: shift-reduce conflict (shift 11, reduce 28) on moins
44: shift-reduce conflict (shift 12, reduce 28) on prod
44: shift-reduce conflict (shift 13, reduce 28) on div
44: shift-reduce conflict (shift 14, reduce 28) on puis
44: shift-reduce conflict (shift 60, reduce 28) on separateur_liste
state 44
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	separateur_liste  shift 60
	.  reduce 28

	expr  goto 17
	fonction  goto 7


45: shift-reduce conflict (shift 64, reduce 35) on error
state 45
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
	liste : expr . separateur_liste liste
	liste : expr .  (35)
	liste : expr . error liste
	liste : expr . separateur_liste error

	error  shift 64
	plus  shift 25
	moins  shift 26
	prod  shift 27
	div  shift 28
	puis  shift 29
	separateur_liste  shift 62
	.  reduce 35


state 46
	fonction : nom_fonction error liste . parenthese_f

	parenthese_f  shift 65


47: shift-reduce conflict (shift 9, reduce 28) on error
47: shift-reduce conflict (shift 10, reduce 28) on plus
47: shift-reduce conflict (shift 11, reduce 28) on moins
47: shift-reduce conflict (shift 12, reduce 28) on prod
47: shift-reduce conflict (shift 13, reduce 28) on div
47: shift-reduce conflict (shift 14, reduce 28) on puis
47: shift-reduce conflict (shift 66, reduce 28) on parenthese_f
47: shift-reduce conflict (shift 60, reduce 28) on separateur_liste
state 47
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f
	fonction : nom_fonction parenthese_o error . parenthese_f
	liste : error . separateur_liste liste

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	parenthese_f  shift 66
	variable  shift 4
	nom_fonction  shift 5
	separateur_liste  shift 60

	expr  goto 17
	fonction  goto 7


state 48
	fonction : nom_fonction parenthese_o liste . parenthese_f
	fonction : nom_fonction parenthese_o liste . error

	error  shift 67
	parenthese_f  shift 68


49: shift-reduce conflict (shift 39, reduce 23) on error
49: shift-reduce conflict (shift 25, reduce 23) on plus
49: shift-reduce conflict (shift 26, reduce 23) on moins
49: shift-reduce conflict (shift 27, reduce 23) on prod
49: shift-reduce conflict (shift 28, reduce 23) on div
49: shift-reduce conflict (shift 29, reduce 23) on puis
state 49
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
	expr : expr error expr .  (23)
	expr : expr . error expr

	error  shift 39
	plus  shift 25
	moins  shift 26
	prod  shift 27
	div  shift 28
	puis  shift 29
	.  reduce 23


50: shift-reduce conflict (shift 9, reduce 13) on error
50: shift-reduce conflict (shift 10, reduce 13) on plus
50: shift-reduce conflict (shift 11, reduce 13) on moins
50: shift-reduce conflict (shift 12, reduce 13) on prod
50: shift-reduce conflict (shift 13, reduce 13) on div
50: shift-reduce conflict (shift 14, reduce 13) on puis
50: shift-reduce conflict (shift 9, reduce 28) on error
50: shift-reduce conflict (shift 10, reduce 28) on plus
50: shift-reduce conflict (shift 11, reduce 28) on moins
50: shift-reduce conflict (shift 12, reduce 28) on prod
50: shift-reduce conflict (shift 13, reduce 28) on div
50: shift-reduce conflict (shift 14, reduce 28) on puis
50: reduce-reduce conflict (reduce 13, reduce 28) on parenthese_f
50: reduce-reduce conflict (reduce 13, reduce 28) on separateur_liste
50: reduce-reduce conflict (reduce 13, reduce 28) on fin_ligne
state 50
	expr : expr plus error .  (13)
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 13

	expr  goto 17
	fonction  goto 7


51: shift-reduce conflict (shift 39, reduce 4) on error
state 51
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

	error  shift 39
	prod  shift 27
	div  shift 28
	puis  shift 29
	.  reduce 4


52: shift-reduce conflict (shift 9, reduce 15) on error
52: shift-reduce conflict (shift 10, reduce 15) on plus
52: shift-reduce conflict (shift 11, reduce 15) on moins
52: shift-reduce conflict (shift 12, reduce 15) on prod
52: shift-reduce conflict (shift 13, reduce 15) on div
52: shift-reduce conflict (shift 14, reduce 15) on puis
52: shift-reduce conflict (shift 9, reduce 28) on error
52: shift-reduce conflict (shift 10, reduce 28) on plus
52: shift-reduce conflict (shift 11, reduce 28) on moins
52: shift-reduce conflict (shift 12, reduce 28) on prod
52: shift-reduce conflict (shift 13, reduce 28) on div
52: shift-reduce conflict (shift 14, reduce 28) on puis
52: reduce-reduce conflict (reduce 15, reduce 28) on parenthese_f
52: reduce-reduce conflict (reduce 15, reduce 28) on separateur_liste
52: reduce-reduce conflict (reduce 15, reduce 28) on fin_ligne
state 52
	expr : error . plus expr
	expr : expr moins error .  (15)
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 15

	expr  goto 17
	fonction  goto 7


53: shift-reduce conflict (shift 39, reduce 5) on error
state 53
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

	error  shift 39
	prod  shift 27
	div  shift 28
	puis  shift 29
	.  reduce 5


54: shift-reduce conflict (shift 9, reduce 17) on error
54: shift-reduce conflict (shift 10, reduce 17) on plus
54: shift-reduce conflict (shift 11, reduce 17) on moins
54: shift-reduce conflict (shift 12, reduce 17) on prod
54: shift-reduce conflict (shift 13, reduce 17) on div
54: shift-reduce conflict (shift 14, reduce 17) on puis
54: shift-reduce conflict (shift 9, reduce 28) on error
54: shift-reduce conflict (shift 10, reduce 28) on plus
54: shift-reduce conflict (shift 11, reduce 28) on moins
54: shift-reduce conflict (shift 12, reduce 28) on prod
54: shift-reduce conflict (shift 13, reduce 28) on div
54: shift-reduce conflict (shift 14, reduce 28) on puis
54: reduce-reduce conflict (reduce 17, reduce 28) on parenthese_f
54: reduce-reduce conflict (reduce 17, reduce 28) on separateur_liste
54: reduce-reduce conflict (reduce 17, reduce 28) on fin_ligne
state 54
	expr : error . plus expr
	expr : error . moins expr
	expr : expr prod error .  (17)
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 17

	expr  goto 17
	fonction  goto 7


55: shift-reduce conflict (shift 39, reduce 6) on error
state 55
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

	error  shift 39
	puis  shift 29
	.  reduce 6


56: shift-reduce conflict (shift 9, reduce 19) on error
56: shift-reduce conflict (shift 10, reduce 19) on plus
56: shift-reduce conflict (shift 11, reduce 19) on moins
56: shift-reduce conflict (shift 12, reduce 19) on prod
56: shift-reduce conflict (shift 13, reduce 19) on div
56: shift-reduce conflict (shift 14, reduce 19) on puis
56: shift-reduce conflict (shift 9, reduce 28) on error
56: shift-reduce conflict (shift 10, reduce 28) on plus
56: shift-reduce conflict (shift 11, reduce 28) on moins
56: shift-reduce conflict (shift 12, reduce 28) on prod
56: shift-reduce conflict (shift 13, reduce 28) on div
56: shift-reduce conflict (shift 14, reduce 28) on puis
56: reduce-reduce conflict (reduce 19, reduce 28) on parenthese_f
56: reduce-reduce conflict (reduce 19, reduce 28) on separateur_liste
56: reduce-reduce conflict (reduce 19, reduce 28) on fin_ligne
state 56
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : expr div error .  (19)
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 19

	expr  goto 17
	fonction  goto 7


57: shift-reduce conflict (shift 39, reduce 7) on error
state 57
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

	error  shift 39
	puis  shift 29
	.  reduce 7


58: shift-reduce conflict (shift 9, reduce 21) on error
58: shift-reduce conflict (shift 10, reduce 21) on plus
58: shift-reduce conflict (shift 11, reduce 21) on moins
58: shift-reduce conflict (shift 12, reduce 21) on prod
58: shift-reduce conflict (shift 13, reduce 21) on div
58: shift-reduce conflict (shift 14, reduce 21) on puis
58: shift-reduce conflict (shift 9, reduce 28) on error
58: shift-reduce conflict (shift 10, reduce 28) on plus
58: shift-reduce conflict (shift 11, reduce 28) on moins
58: shift-reduce conflict (shift 12, reduce 28) on prod
58: shift-reduce conflict (shift 13, reduce 28) on div
58: shift-reduce conflict (shift 14, reduce 28) on puis
58: reduce-reduce conflict (reduce 21, reduce 28) on parenthese_f
58: reduce-reduce conflict (reduce 21, reduce 28) on separateur_liste
58: reduce-reduce conflict (reduce 21, reduce 28) on fin_ligne
state 58
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : expr puis error .  (21)
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 21

	expr  goto 17
	fonction  goto 7


59: shift-reduce conflict (shift 39, reduce 8) on error
state 59
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

	error  shift 39
	puis  shift 29
	.  reduce 8


state 60
	liste : error separateur_liste . liste

	error  shift 44
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 45
	fonction  goto 7
	liste  goto 69


61: shift-reduce conflict (shift 44, reduce 27) on error
61: shift-reduce conflict (shift 2, reduce 27) on moins
state 61
	expr : expr error . expr
	expr : parenthese_o expr error .  (27)
	liste : expr error . liste

	error  shift 44
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5
	.  reduce 27

	expr  goto 70
	fonction  goto 7
	liste  goto 71


state 62
	liste : expr separateur_liste . liste
	liste : expr separateur_liste . error

	error  shift 72
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 45
	fonction  goto 7
	liste  goto 73


state 63
	fonction : error parenthese_o liste parenthese_f .  (30)

	.  reduce 30


state 64
	expr : expr error . expr
	liste : expr error . liste

	error  shift 44
	moins  shift 2
	parenthese_o  shift 3
	variable  shift 4
	nom_fonction  shift 5

	expr  goto 70
	fonction  goto 7
	liste  goto 71


state 65
	fonction : nom_fonction error liste parenthese_f .  (31)

	.  reduce 31


state 66
	fonction : nom_fonction parenthese_o error parenthese_f .  (32)

	.  reduce 32


state 67
	fonction : nom_fonction parenthese_o liste error .  (33)

	.  reduce 33


state 68
	fonction : nom_fonction parenthese_o liste parenthese_f .  (29)

	.  reduce 29


state 69
	liste : error separateur_liste liste .  (36)

	.  reduce 36


70: shift-reduce conflict (shift 64, reduce 23) on error
70: shift-reduce conflict (shift 25, reduce 23) on plus
70: shift-reduce conflict (shift 26, reduce 23) on moins
70: shift-reduce conflict (shift 27, reduce 23) on prod
70: shift-reduce conflict (shift 28, reduce 23) on div
70: shift-reduce conflict (shift 29, reduce 23) on puis
70: shift-reduce conflict (shift 62, reduce 23) on separateur_liste
70: shift-reduce conflict (shift 64, reduce 35) on error
70: reduce-reduce conflict (reduce 23, reduce 35) on parenthese_f
state 70
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
	expr : expr error expr .  (23)
	expr : expr . error expr
	liste : expr . separateur_liste liste
	liste : expr .  (35)
	liste : expr . error liste
	liste : expr . separateur_liste error

	error  shift 64
	plus  shift 25
	moins  shift 26
	prod  shift 27
	div  shift 28
	puis  shift 29
	separateur_liste  shift 62
	.  reduce 23


state 71
	liste : expr error liste .  (37)

	.  reduce 37


72: shift-reduce conflict (shift 9, reduce 28) on error
72: shift-reduce conflict (shift 10, reduce 28) on plus
72: shift-reduce conflict (shift 11, reduce 28) on moins
72: shift-reduce conflict (shift 12, reduce 28) on prod
72: shift-reduce conflict (shift 13, reduce 28) on div
72: shift-reduce conflict (shift 14, reduce 28) on puis
72: shift-reduce conflict (shift 60, reduce 28) on separateur_liste
72: shift-reduce conflict (shift 9, reduce 38) on error
72: reduce-reduce conflict (reduce 28, reduce 38) on parenthese_f
state 72
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (28)
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste
	liste : expr separateur_liste error .  (38)

	error  shift 9
	plus  shift 10
	moins  shift 11
	prod  shift 12
	div  shift 13
	puis  shift 14
	parenthese_o  shift 15
	variable  shift 4
	nom_fonction  shift 5
	separateur_liste  shift 60
	.  reduce 28

	expr  goto 17
	fonction  goto 7


state 73
	liste : expr separateur_liste liste .  (34)

	.  reduce 34


Rules never reduced
	liste : expr separateur_liste error  (38)


##############################################################################
# Summary
##############################################################################

State 1 contains 7 shift-reduce conflict(s)
State 9 contains 6 shift-reduce conflict(s)
State 18 contains 2 shift-reduce conflict(s)
State 18 contains 8 reduce-reduce conflict(s)
State 19 contains 1 shift-reduce conflict(s)
State 20 contains 7 shift-reduce conflict(s)
State 31 contains 1 shift-reduce conflict(s)
State 32 contains 2 shift-reduce conflict(s)
State 32 contains 6 reduce-reduce conflict(s)
State 33 contains 1 shift-reduce conflict(s)
State 34 contains 1 shift-reduce conflict(s)
State 35 contains 1 shift-reduce conflict(s)
State 36 contains 8 shift-reduce conflict(s)
State 37 contains 1 shift-reduce conflict(s)
State 42 contains 2 shift-reduce conflict(s)
State 44 contains 7 shift-reduce conflict(s)
State 45 contains 1 shift-reduce conflict(s)
State 47 contains 8 shift-reduce conflict(s)
State 49 contains 6 shift-reduce conflict(s)
State 50 contains 12 shift-reduce conflict(s)
State 50 contains 3 reduce-reduce conflict(s)
State 51 contains 1 shift-reduce conflict(s)
State 52 contains 12 shift-reduce conflict(s)
State 52 contains 3 reduce-reduce conflict(s)
State 53 contains 1 shift-reduce conflict(s)
State 54 contains 12 shift-reduce conflict(s)
State 54 contains 3 reduce-reduce conflict(s)
State 55 contains 1 shift-reduce conflict(s)
State 56 contains 12 shift-reduce conflict(s)
State 56 contains 3 reduce-reduce conflict(s)
State 57 contains 1 shift-reduce conflict(s)
State 58 contains 12 shift-reduce conflict(s)
State 58 contains 3 reduce-reduce conflict(s)
State 59 contains 1 shift-reduce conflict(s)
State 61 contains 2 shift-reduce conflict(s)
State 70 contains 8 shift-reduce conflict(s)
State 70 contains 1 reduce-reduce conflict(s)
State 72 contains 8 shift-reduce conflict(s)
State 72 contains 1 reduce-reduce conflict(s)


14 token(s), 5 nonterminal(s)
39 grammar rule(s), 74 state(s)


##############################################################################
# End of File
##############################################################################
