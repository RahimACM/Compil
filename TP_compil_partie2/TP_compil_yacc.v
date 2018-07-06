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
# Time: 20:16:18
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
   12       | fonction
   13       | instr_si
   14       | expr plus error
   15       | error plus expr
   16       | expr moins error
   17       | error moins expr
   18       | expr prod error
   19       | error prod expr
   20       | expr div error
   21       | error div expr
   22       | expr puis error
   23       | error puis expr
   24       | expr error expr
   25       | moins error
   26       | error expr parenthese_f
   27       | parenthese_o error parenthese_f
   28       | parenthese_o expr error
   29       | error

   30  instr_si : si parenthese_o cond separateur_si expr separateur_si expr parenthese_f
   31           | error parenthese_o cond separateur_si expr separateur_si expr parenthese_f
   32           | si error cond separateur_si expr separateur_si expr parenthese_f
   33           | si parenthese_o error separateur_si expr separateur_si expr parenthese_f
   34           | si parenthese_o cond error expr separateur_si expr parenthese_f
   35           | si parenthese_o cond separateur_si error separateur_si expr parenthese_f
   36           | si parenthese_o cond separateur_si expr error expr parenthese_f
   37           | si parenthese_o cond separateur_si expr separateur_si error parenthese_f
   38           | si parenthese_o cond separateur_si expr separateur_si expr error

   39  cond : expr inf expr
   40       | expr sup expr
   41       | expr ega expr
   42       | or_op parenthese_o liste_cmp parenthese_f
   43       | and_op parenthese_o liste_cmp parenthese_f
   44       | expr
   45       | error inf expr
   46       | expr inf error
   47       | error sup expr
   48       | expr sup error
   49       | error ega expr
   50       | expr ega error
   51       | or_op error liste_cmp parenthese_f
   52       | or_op parenthese_o error parenthese_f
   53       | or_op parenthese_o liste_cmp error
   54       | and_op error liste_cmp parenthese_f
   55       | and_op parenthese_o error parenthese_f
   56       | and_op parenthese_o liste_cmp error
   57       | error parenthese_o liste_cmp parenthese_f

   58  liste_cmp : liste_cmp separateur_liste cond
   59            | cond
   60            | error separateur_liste cond
   61            | liste_cmp error cond
   62            | liste_cmp separateur_liste error

   63  fonction : nom_fonction parenthese_o liste parenthese_f
   64           | error parenthese_o liste parenthese_f
   65           | nom_fonction error liste parenthese_f
   66           | nom_fonction parenthese_o error parenthese_f
   67           | nom_fonction parenthese_o liste error

   68  liste : expr separateur_liste liste
   69        | expr
   70        | error separateur_liste liste
   71        | expr error liste
   72        | expr separateur_liste error


##############################################################################
# States
##############################################################################

state 0
	$accept : . ligne $end

	error  shift 1
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 7
	fonction  goto 8
	instr_si  goto 9
	ligne  goto 10


1: shift-reduce conflict (shift 11, reduce 29) on error
1: shift-reduce conflict (shift 12, reduce 29) on plus
1: shift-reduce conflict (shift 13, reduce 29) on moins
1: shift-reduce conflict (shift 14, reduce 29) on prod
1: shift-reduce conflict (shift 15, reduce 29) on div
1: shift-reduce conflict (shift 16, reduce 29) on puis
1: shift-reduce conflict (shift 18, reduce 29) on fin_ligne
state 1
	ligne : error . fin_ligne
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	fin_ligne  shift 18

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 2
	expr : moins . expr
	expr : moins . error

	error  shift 20
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 21
	fonction  goto 8
	instr_si  goto 9


state 3
	expr : parenthese_o . expr parenthese_f
	expr : parenthese_o . error parenthese_f
	expr : parenthese_o . expr error

	error  shift 22
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 23
	fonction  goto 8
	instr_si  goto 9


state 4
	expr : nombre .  (11)

	.  reduce 11


state 5
	fonction : nom_fonction . parenthese_o liste parenthese_f
	fonction : nom_fonction . error liste parenthese_f
	fonction : nom_fonction . parenthese_o error parenthese_f
	fonction : nom_fonction . parenthese_o liste error

	error  shift 24
	parenthese_o  shift 25


state 6
	instr_si : si . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	instr_si : si . error cond separateur_si expr separateur_si expr parenthese_f
	instr_si : si . parenthese_o error separateur_si expr separateur_si expr parenthese_f
	instr_si : si . parenthese_o cond error expr separateur_si expr parenthese_f
	instr_si : si . parenthese_o cond separateur_si error separateur_si expr parenthese_f
	instr_si : si . parenthese_o cond separateur_si expr error expr parenthese_f
	instr_si : si . parenthese_o cond separateur_si expr separateur_si error parenthese_f
	instr_si : si . parenthese_o cond separateur_si expr separateur_si expr error

	error  shift 26
	parenthese_o  shift 27


state 7
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

	error  shift 28
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	fin_ligne  shift 34


state 8
	expr : fonction .  (12)

	.  reduce 12


state 9
	expr : instr_si .  (13)

	.  reduce 13


state 10
	$accept : ligne . $end  (0)

	$end  accept


11: shift-reduce conflict (shift 11, reduce 29) on error
11: shift-reduce conflict (shift 12, reduce 29) on plus
11: shift-reduce conflict (shift 13, reduce 29) on moins
11: shift-reduce conflict (shift 14, reduce 29) on prod
11: shift-reduce conflict (shift 15, reduce 29) on div
11: shift-reduce conflict (shift 16, reduce 29) on puis
state 11
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 12
	expr : error plus . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 35
	fonction  goto 8
	instr_si  goto 9


state 13
	expr : moins . expr
	expr : error moins . expr
	expr : moins . error

	error  shift 20
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 36
	fonction  goto 8
	instr_si  goto 9


state 14
	expr : error prod . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 37
	fonction  goto 8
	instr_si  goto 9


state 15
	expr : error div . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 38
	fonction  goto 8
	instr_si  goto 9


state 16
	expr : error puis . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 39
	fonction  goto 8
	instr_si  goto 9


state 17
	expr : parenthese_o . expr parenthese_f
	expr : parenthese_o . error parenthese_f
	expr : parenthese_o . expr error
	instr_si : error parenthese_o . cond separateur_si expr separateur_si expr parenthese_f
	fonction : error parenthese_o . liste parenthese_f

	error  shift 40
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 43
	fonction  goto 8
	instr_si  goto 9
	cond  goto 44
	liste  goto 45


state 18
	ligne : error fin_ligne .  (2)

	.  reduce 2


state 19
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

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 47


20: shift-reduce conflict (shift 11, reduce 25) on error
20: shift-reduce conflict (shift 11, reduce 29) on error
20: reduce-reduce conflict (reduce 25, reduce 29) on plus
20: reduce-reduce conflict (reduce 25, reduce 29) on moins
20: reduce-reduce conflict (reduce 25, reduce 29) on prod
20: reduce-reduce conflict (reduce 25, reduce 29) on div
20: reduce-reduce conflict (reduce 25, reduce 29) on puis
20: reduce-reduce conflict (reduce 25, reduce 29) on parenthese_f
20: reduce-reduce conflict (reduce 25, reduce 29) on inf
20: reduce-reduce conflict (reduce 25, reduce 29) on sup
20: reduce-reduce conflict (reduce 25, reduce 29) on ega
20: reduce-reduce conflict (reduce 25, reduce 29) on separateur_liste
20: reduce-reduce conflict (reduce 25, reduce 29) on separateur_si
20: reduce-reduce conflict (reduce 25, reduce 29) on fin_ligne
state 20
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : moins error .  (25)
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 25

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


21: shift-reduce conflict (shift 46, reduce 9) on error
state 21
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

	error  shift 46
	.  reduce 9


22: shift-reduce conflict (shift 11, reduce 29) on error
22: shift-reduce conflict (shift 12, reduce 29) on plus
22: shift-reduce conflict (shift 13, reduce 29) on moins
22: shift-reduce conflict (shift 14, reduce 29) on prod
22: shift-reduce conflict (shift 15, reduce 29) on div
22: shift-reduce conflict (shift 16, reduce 29) on puis
22: shift-reduce conflict (shift 48, reduce 29) on parenthese_f
state 22
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : parenthese_o error . parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	parenthese_f  shift 48
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 23
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

	error  shift 49
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 50


state 24
	fonction : nom_fonction error . liste parenthese_f

	error  shift 51
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 52
	fonction  goto 8
	instr_si  goto 9
	liste  goto 53


state 25
	fonction : nom_fonction parenthese_o . liste parenthese_f
	fonction : nom_fonction parenthese_o . error parenthese_f
	fonction : nom_fonction parenthese_o . liste error

	error  shift 54
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 52
	fonction  goto 8
	instr_si  goto 9
	liste  goto 55


state 26
	instr_si : si error . cond separateur_si expr separateur_si expr parenthese_f

	error  shift 56
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 58


state 27
	instr_si : si parenthese_o . cond separateur_si expr separateur_si expr parenthese_f
	instr_si : si parenthese_o . error separateur_si expr separateur_si expr parenthese_f
	instr_si : si parenthese_o . cond error expr separateur_si expr parenthese_f
	instr_si : si parenthese_o . cond separateur_si error separateur_si expr parenthese_f
	instr_si : si parenthese_o . cond separateur_si expr error expr parenthese_f
	instr_si : si parenthese_o . cond separateur_si expr separateur_si error parenthese_f
	instr_si : si parenthese_o . cond separateur_si expr separateur_si expr error

	error  shift 59
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 60


state 28
	ligne : expr error .  (3)
	expr : expr error . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 3

	expr  goto 61
	fonction  goto 8
	instr_si  goto 9


state 29
	expr : expr plus . expr
	expr : expr plus . error

	error  shift 62
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 63
	fonction  goto 8
	instr_si  goto 9


state 30
	expr : expr moins . expr
	expr : expr moins . error

	error  shift 64
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 65
	fonction  goto 8
	instr_si  goto 9


state 31
	expr : expr prod . expr
	expr : expr prod . error

	error  shift 66
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 67
	fonction  goto 8
	instr_si  goto 9


state 32
	expr : expr div . expr
	expr : expr div . error

	error  shift 68
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 69
	fonction  goto 8
	instr_si  goto 9


state 33
	expr : expr puis . expr
	expr : expr puis . error

	error  shift 70
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 71
	fonction  goto 8
	instr_si  goto 9


state 34
	ligne : expr fin_ligne .  (1)

	.  reduce 1


35: shift-reduce conflict (shift 46, reduce 15) on error
state 35
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : error plus expr .  (15)
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 46
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 15


36: shift-reduce conflict (shift 46, reduce 9) on error
36: shift-reduce conflict (shift 46, reduce 17) on error
36: reduce-reduce conflict (reduce 9, reduce 17) on plus
36: reduce-reduce conflict (reduce 9, reduce 17) on moins
36: reduce-reduce conflict (reduce 9, reduce 17) on prod
36: reduce-reduce conflict (reduce 9, reduce 17) on div
36: reduce-reduce conflict (reduce 9, reduce 17) on puis
36: reduce-reduce conflict (reduce 9, reduce 17) on parenthese_f
state 36
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : moins expr .  (9)
	expr : expr . plus error
	expr : expr . moins error
	expr : error moins expr .  (17)
	expr : expr . prod error
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 46
	inf  reduce 17
	sup  reduce 17
	ega  reduce 17
	separateur_liste  reduce 17
	separateur_si  reduce 17
	fin_ligne  reduce 17
	.  reduce 9


37: shift-reduce conflict (shift 46, reduce 19) on error
state 37
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : error prod expr .  (19)
	expr : expr . div error
	expr : expr . puis error
	expr : expr . error expr

	error  shift 46
	puis  shift 33
	.  reduce 19


38: shift-reduce conflict (shift 46, reduce 21) on error
state 38
	expr : expr . plus expr
	expr : expr . moins expr
	expr : expr . prod expr
	expr : expr . div expr
	expr : expr . puis expr
	expr : expr . plus error
	expr : expr . moins error
	expr : expr . prod error
	expr : expr . div error
	expr : error div expr .  (21)
	expr : expr . puis error
	expr : expr . error expr

	error  shift 46
	puis  shift 33
	.  reduce 21


39: shift-reduce conflict (shift 46, reduce 23) on error
state 39
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
	expr : error puis expr .  (23)
	expr : expr . error expr

	error  shift 46
	puis  shift 33
	.  reduce 23


40: shift-reduce conflict (shift 11, reduce 29) on error
40: shift-reduce conflict (shift 12, reduce 29) on plus
40: shift-reduce conflict (shift 13, reduce 29) on moins
40: shift-reduce conflict (shift 14, reduce 29) on prod
40: shift-reduce conflict (shift 15, reduce 29) on div
40: shift-reduce conflict (shift 16, reduce 29) on puis
40: shift-reduce conflict (shift 48, reduce 29) on parenthese_f
40: shift-reduce conflict (shift 73, reduce 29) on inf
40: shift-reduce conflict (shift 74, reduce 29) on sup
40: shift-reduce conflict (shift 75, reduce 29) on ega
40: shift-reduce conflict (shift 76, reduce 29) on separateur_liste
state 40
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : parenthese_o error . parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : error . parenthese_o liste_cmp parenthese_f
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	parenthese_f  shift 48
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 76
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 41
	cond : or_op . parenthese_o liste_cmp parenthese_f
	cond : or_op . error liste_cmp parenthese_f
	cond : or_op . parenthese_o error parenthese_f
	cond : or_op . parenthese_o liste_cmp error

	error  shift 77
	parenthese_o  shift 78


state 42
	cond : and_op . parenthese_o liste_cmp parenthese_f
	cond : and_op . error liste_cmp parenthese_f
	cond : and_op . parenthese_o error parenthese_f
	cond : and_op . parenthese_o liste_cmp error

	error  shift 79
	parenthese_o  shift 80


43: shift-reduce conflict (shift 81, reduce 44) on error
43: shift-reduce conflict (shift 50, reduce 44) on parenthese_f
43: shift-reduce conflict (shift 85, reduce 44) on separateur_liste
43: shift-reduce conflict (shift 50, reduce 69) on parenthese_f
state 43
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
	cond : expr . inf expr
	cond : expr . sup expr
	cond : expr . ega expr
	cond : expr .  (44)
	cond : expr . inf error
	cond : expr . sup error
	cond : expr . ega error
	liste : expr . separateur_liste liste
	liste : expr .  (69)
	liste : expr . error liste
	liste : expr . separateur_liste error

	error  shift 81
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 50
	inf  shift 82
	sup  shift 83
	ega  shift 84
	separateur_liste  shift 85
	.  reduce 44


state 44
	instr_si : error parenthese_o cond . separateur_si expr separateur_si expr parenthese_f

	separateur_si  shift 86


state 45
	fonction : error parenthese_o liste . parenthese_f

	parenthese_f  shift 87


state 46
	expr : expr error . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 61
	fonction  goto 8
	instr_si  goto 9


state 47
	expr : error expr parenthese_f .  (26)

	.  reduce 26


state 48
	expr : parenthese_o error parenthese_f .  (27)

	.  reduce 27


49: shift-reduce conflict (shift 11, reduce 28) on error
49: shift-reduce conflict (shift 2, reduce 28) on moins
state 49
	expr : expr error . expr
	expr : parenthese_o expr error .  (28)

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 28

	expr  goto 61
	fonction  goto 8
	instr_si  goto 9


state 50
	expr : parenthese_o expr parenthese_f .  (10)

	.  reduce 10


51: shift-reduce conflict (shift 11, reduce 29) on error
51: shift-reduce conflict (shift 12, reduce 29) on plus
51: shift-reduce conflict (shift 13, reduce 29) on moins
51: shift-reduce conflict (shift 14, reduce 29) on prod
51: shift-reduce conflict (shift 15, reduce 29) on div
51: shift-reduce conflict (shift 16, reduce 29) on puis
51: shift-reduce conflict (shift 76, reduce 29) on separateur_liste
state 51
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 76
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


52: shift-reduce conflict (shift 88, reduce 69) on error
state 52
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
	liste : expr .  (69)
	liste : expr . error liste
	liste : expr . separateur_liste error

	error  shift 88
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	separateur_liste  shift 85
	.  reduce 69


state 53
	fonction : nom_fonction error liste . parenthese_f

	parenthese_f  shift 89


54: shift-reduce conflict (shift 11, reduce 29) on error
54: shift-reduce conflict (shift 12, reduce 29) on plus
54: shift-reduce conflict (shift 13, reduce 29) on moins
54: shift-reduce conflict (shift 14, reduce 29) on prod
54: shift-reduce conflict (shift 15, reduce 29) on div
54: shift-reduce conflict (shift 16, reduce 29) on puis
54: shift-reduce conflict (shift 90, reduce 29) on parenthese_f
54: shift-reduce conflict (shift 76, reduce 29) on separateur_liste
state 54
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f
	fonction : nom_fonction parenthese_o error . parenthese_f
	liste : error . separateur_liste liste

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	parenthese_f  shift 90
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 76

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 55
	fonction : nom_fonction parenthese_o liste . parenthese_f
	fonction : nom_fonction parenthese_o liste . error

	error  shift 91
	parenthese_f  shift 92


56: shift-reduce conflict (shift 11, reduce 29) on error
56: shift-reduce conflict (shift 12, reduce 29) on plus
56: shift-reduce conflict (shift 13, reduce 29) on moins
56: shift-reduce conflict (shift 14, reduce 29) on prod
56: shift-reduce conflict (shift 15, reduce 29) on div
56: shift-reduce conflict (shift 16, reduce 29) on puis
56: shift-reduce conflict (shift 73, reduce 29) on inf
56: shift-reduce conflict (shift 74, reduce 29) on sup
56: shift-reduce conflict (shift 75, reduce 29) on ega
state 56
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : error . parenthese_o liste_cmp parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


57: shift-reduce conflict (shift 46, reduce 44) on error
state 57
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
	cond : expr . inf expr
	cond : expr . sup expr
	cond : expr . ega expr
	cond : expr .  (44)
	cond : expr . inf error
	cond : expr . sup error
	cond : expr . ega error

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	inf  shift 82
	sup  shift 83
	ega  shift 84
	.  reduce 44


state 58
	instr_si : si error cond . separateur_si expr separateur_si expr parenthese_f

	separateur_si  shift 93


59: shift-reduce conflict (shift 11, reduce 29) on error
59: shift-reduce conflict (shift 12, reduce 29) on plus
59: shift-reduce conflict (shift 13, reduce 29) on moins
59: shift-reduce conflict (shift 14, reduce 29) on prod
59: shift-reduce conflict (shift 15, reduce 29) on div
59: shift-reduce conflict (shift 16, reduce 29) on puis
59: shift-reduce conflict (shift 73, reduce 29) on inf
59: shift-reduce conflict (shift 74, reduce 29) on sup
59: shift-reduce conflict (shift 75, reduce 29) on ega
59: shift-reduce conflict (shift 94, reduce 29) on separateur_si
state 59
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	instr_si : si parenthese_o error . separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : error . parenthese_o liste_cmp parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_si  shift 94

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 60
	instr_si : si parenthese_o cond . separateur_si expr separateur_si expr parenthese_f
	instr_si : si parenthese_o cond . error expr separateur_si expr parenthese_f
	instr_si : si parenthese_o cond . separateur_si error separateur_si expr parenthese_f
	instr_si : si parenthese_o cond . separateur_si expr error expr parenthese_f
	instr_si : si parenthese_o cond . separateur_si expr separateur_si error parenthese_f
	instr_si : si parenthese_o cond . separateur_si expr separateur_si expr error

	error  shift 95
	separateur_si  shift 96


61: shift-reduce conflict (shift 46, reduce 24) on error
61: shift-reduce conflict (shift 29, reduce 24) on plus
61: shift-reduce conflict (shift 30, reduce 24) on moins
61: shift-reduce conflict (shift 31, reduce 24) on prod
61: shift-reduce conflict (shift 32, reduce 24) on div
61: shift-reduce conflict (shift 33, reduce 24) on puis
state 61
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
	expr : expr error expr .  (24)
	expr : expr . error expr

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 24


62: shift-reduce conflict (shift 11, reduce 14) on error
62: shift-reduce conflict (shift 12, reduce 14) on plus
62: shift-reduce conflict (shift 13, reduce 14) on moins
62: shift-reduce conflict (shift 14, reduce 14) on prod
62: shift-reduce conflict (shift 15, reduce 14) on div
62: shift-reduce conflict (shift 16, reduce 14) on puis
62: shift-reduce conflict (shift 11, reduce 29) on error
62: shift-reduce conflict (shift 12, reduce 29) on plus
62: shift-reduce conflict (shift 13, reduce 29) on moins
62: shift-reduce conflict (shift 14, reduce 29) on prod
62: shift-reduce conflict (shift 15, reduce 29) on div
62: shift-reduce conflict (shift 16, reduce 29) on puis
62: reduce-reduce conflict (reduce 14, reduce 29) on parenthese_f
62: reduce-reduce conflict (reduce 14, reduce 29) on inf
62: reduce-reduce conflict (reduce 14, reduce 29) on sup
62: reduce-reduce conflict (reduce 14, reduce 29) on ega
62: reduce-reduce conflict (reduce 14, reduce 29) on separateur_liste
62: reduce-reduce conflict (reduce 14, reduce 29) on separateur_si
62: reduce-reduce conflict (reduce 14, reduce 29) on fin_ligne
state 62
	expr : expr plus error .  (14)
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 14

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


63: shift-reduce conflict (shift 46, reduce 4) on error
state 63
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

	error  shift 46
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 4


64: shift-reduce conflict (shift 11, reduce 16) on error
64: shift-reduce conflict (shift 12, reduce 16) on plus
64: shift-reduce conflict (shift 13, reduce 16) on moins
64: shift-reduce conflict (shift 14, reduce 16) on prod
64: shift-reduce conflict (shift 15, reduce 16) on div
64: shift-reduce conflict (shift 16, reduce 16) on puis
64: shift-reduce conflict (shift 11, reduce 29) on error
64: shift-reduce conflict (shift 12, reduce 29) on plus
64: shift-reduce conflict (shift 13, reduce 29) on moins
64: shift-reduce conflict (shift 14, reduce 29) on prod
64: shift-reduce conflict (shift 15, reduce 29) on div
64: shift-reduce conflict (shift 16, reduce 29) on puis
64: reduce-reduce conflict (reduce 16, reduce 29) on parenthese_f
64: reduce-reduce conflict (reduce 16, reduce 29) on inf
64: reduce-reduce conflict (reduce 16, reduce 29) on sup
64: reduce-reduce conflict (reduce 16, reduce 29) on ega
64: reduce-reduce conflict (reduce 16, reduce 29) on separateur_liste
64: reduce-reduce conflict (reduce 16, reduce 29) on separateur_si
64: reduce-reduce conflict (reduce 16, reduce 29) on fin_ligne
state 64
	expr : error . plus expr
	expr : expr moins error .  (16)
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 16

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


65: shift-reduce conflict (shift 46, reduce 5) on error
state 65
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

	error  shift 46
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 5


66: shift-reduce conflict (shift 11, reduce 18) on error
66: shift-reduce conflict (shift 12, reduce 18) on plus
66: shift-reduce conflict (shift 13, reduce 18) on moins
66: shift-reduce conflict (shift 14, reduce 18) on prod
66: shift-reduce conflict (shift 15, reduce 18) on div
66: shift-reduce conflict (shift 16, reduce 18) on puis
66: shift-reduce conflict (shift 11, reduce 29) on error
66: shift-reduce conflict (shift 12, reduce 29) on plus
66: shift-reduce conflict (shift 13, reduce 29) on moins
66: shift-reduce conflict (shift 14, reduce 29) on prod
66: shift-reduce conflict (shift 15, reduce 29) on div
66: shift-reduce conflict (shift 16, reduce 29) on puis
66: reduce-reduce conflict (reduce 18, reduce 29) on parenthese_f
66: reduce-reduce conflict (reduce 18, reduce 29) on inf
66: reduce-reduce conflict (reduce 18, reduce 29) on sup
66: reduce-reduce conflict (reduce 18, reduce 29) on ega
66: reduce-reduce conflict (reduce 18, reduce 29) on separateur_liste
66: reduce-reduce conflict (reduce 18, reduce 29) on separateur_si
66: reduce-reduce conflict (reduce 18, reduce 29) on fin_ligne
state 66
	expr : error . plus expr
	expr : error . moins expr
	expr : expr prod error .  (18)
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 18

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


67: shift-reduce conflict (shift 46, reduce 6) on error
state 67
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

	error  shift 46
	puis  shift 33
	.  reduce 6


68: shift-reduce conflict (shift 11, reduce 20) on error
68: shift-reduce conflict (shift 12, reduce 20) on plus
68: shift-reduce conflict (shift 13, reduce 20) on moins
68: shift-reduce conflict (shift 14, reduce 20) on prod
68: shift-reduce conflict (shift 15, reduce 20) on div
68: shift-reduce conflict (shift 16, reduce 20) on puis
68: shift-reduce conflict (shift 11, reduce 29) on error
68: shift-reduce conflict (shift 12, reduce 29) on plus
68: shift-reduce conflict (shift 13, reduce 29) on moins
68: shift-reduce conflict (shift 14, reduce 29) on prod
68: shift-reduce conflict (shift 15, reduce 29) on div
68: shift-reduce conflict (shift 16, reduce 29) on puis
68: reduce-reduce conflict (reduce 20, reduce 29) on parenthese_f
68: reduce-reduce conflict (reduce 20, reduce 29) on inf
68: reduce-reduce conflict (reduce 20, reduce 29) on sup
68: reduce-reduce conflict (reduce 20, reduce 29) on ega
68: reduce-reduce conflict (reduce 20, reduce 29) on separateur_liste
68: reduce-reduce conflict (reduce 20, reduce 29) on separateur_si
68: reduce-reduce conflict (reduce 20, reduce 29) on fin_ligne
state 68
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : expr div error .  (20)
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 20

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


69: shift-reduce conflict (shift 46, reduce 7) on error
state 69
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

	error  shift 46
	puis  shift 33
	.  reduce 7


70: shift-reduce conflict (shift 11, reduce 22) on error
70: shift-reduce conflict (shift 12, reduce 22) on plus
70: shift-reduce conflict (shift 13, reduce 22) on moins
70: shift-reduce conflict (shift 14, reduce 22) on prod
70: shift-reduce conflict (shift 15, reduce 22) on div
70: shift-reduce conflict (shift 16, reduce 22) on puis
70: shift-reduce conflict (shift 11, reduce 29) on error
70: shift-reduce conflict (shift 12, reduce 29) on plus
70: shift-reduce conflict (shift 13, reduce 29) on moins
70: shift-reduce conflict (shift 14, reduce 29) on prod
70: shift-reduce conflict (shift 15, reduce 29) on div
70: shift-reduce conflict (shift 16, reduce 29) on puis
70: reduce-reduce conflict (reduce 22, reduce 29) on parenthese_f
70: reduce-reduce conflict (reduce 22, reduce 29) on inf
70: reduce-reduce conflict (reduce 22, reduce 29) on sup
70: reduce-reduce conflict (reduce 22, reduce 29) on ega
70: reduce-reduce conflict (reduce 22, reduce 29) on separateur_liste
70: reduce-reduce conflict (reduce 22, reduce 29) on separateur_si
70: reduce-reduce conflict (reduce 22, reduce 29) on fin_ligne
state 70
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : expr puis error .  (22)
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 22

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


71: shift-reduce conflict (shift 46, reduce 8) on error
state 71
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

	error  shift 46
	puis  shift 33
	.  reduce 8


state 72
	expr : parenthese_o . expr parenthese_f
	expr : parenthese_o . error parenthese_f
	expr : parenthese_o . expr error
	instr_si : error parenthese_o . cond separateur_si expr separateur_si expr parenthese_f
	cond : error parenthese_o . liste_cmp parenthese_f
	fonction : error parenthese_o . liste parenthese_f

	error  shift 97
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 43
	fonction  goto 8
	instr_si  goto 9
	cond  goto 98
	liste  goto 45
	liste_cmp  goto 99


state 73
	cond : error inf . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 100
	fonction  goto 8
	instr_si  goto 9


state 74
	cond : error sup . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 101
	fonction  goto 8
	instr_si  goto 9


state 75
	cond : error ega . expr

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 102
	fonction  goto 8
	instr_si  goto 9


state 76
	liste : error separateur_liste . liste

	error  shift 51
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 52
	fonction  goto 8
	instr_si  goto 9
	liste  goto 103


state 77
	cond : or_op error . liste_cmp parenthese_f

	error  shift 104
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 105
	liste_cmp  goto 106


state 78
	cond : or_op parenthese_o . liste_cmp parenthese_f
	cond : or_op parenthese_o . error parenthese_f
	cond : or_op parenthese_o . liste_cmp error

	error  shift 107
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 105
	liste_cmp  goto 108


state 79
	cond : and_op error . liste_cmp parenthese_f

	error  shift 104
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 105
	liste_cmp  goto 109


state 80
	cond : and_op parenthese_o . liste_cmp parenthese_f
	cond : and_op parenthese_o . error parenthese_f
	cond : and_op parenthese_o . liste_cmp error

	error  shift 110
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 105
	liste_cmp  goto 111


81: shift-reduce conflict (shift 51, reduce 28) on error
81: shift-reduce conflict (shift 2, reduce 28) on moins
state 81
	expr : expr error . expr
	expr : parenthese_o expr error .  (28)
	liste : expr error . liste

	error  shift 51
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 28

	expr  goto 112
	fonction  goto 8
	instr_si  goto 9
	liste  goto 113


state 82
	cond : expr inf . expr
	cond : expr inf . error

	error  shift 114
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 115
	fonction  goto 8
	instr_si  goto 9


state 83
	cond : expr sup . expr
	cond : expr sup . error

	error  shift 116
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 117
	fonction  goto 8
	instr_si  goto 9


state 84
	cond : expr ega . expr
	cond : expr ega . error

	error  shift 118
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 119
	fonction  goto 8
	instr_si  goto 9


state 85
	liste : expr separateur_liste . liste
	liste : expr separateur_liste . error

	error  shift 120
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 52
	fonction  goto 8
	instr_si  goto 9
	liste  goto 121


state 86
	instr_si : error parenthese_o cond separateur_si . expr separateur_si expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 122
	fonction  goto 8
	instr_si  goto 9


state 87
	fonction : error parenthese_o liste parenthese_f .  (64)

	.  reduce 64


state 88
	expr : expr error . expr
	liste : expr error . liste

	error  shift 51
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 112
	fonction  goto 8
	instr_si  goto 9
	liste  goto 113


state 89
	fonction : nom_fonction error liste parenthese_f .  (65)

	.  reduce 65


state 90
	fonction : nom_fonction parenthese_o error parenthese_f .  (66)

	.  reduce 66


state 91
	fonction : nom_fonction parenthese_o liste error .  (67)

	.  reduce 67


state 92
	fonction : nom_fonction parenthese_o liste parenthese_f .  (63)

	.  reduce 63


state 93
	instr_si : si error cond separateur_si . expr separateur_si expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 123
	fonction  goto 8
	instr_si  goto 9


state 94
	instr_si : si parenthese_o error separateur_si . expr separateur_si expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 124
	fonction  goto 8
	instr_si  goto 9


state 95
	instr_si : si parenthese_o cond error . expr separateur_si expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 125
	fonction  goto 8
	instr_si  goto 9


state 96
	instr_si : si parenthese_o cond separateur_si . expr separateur_si expr parenthese_f
	instr_si : si parenthese_o cond separateur_si . error separateur_si expr parenthese_f
	instr_si : si parenthese_o cond separateur_si . expr error expr parenthese_f
	instr_si : si parenthese_o cond separateur_si . expr separateur_si error parenthese_f
	instr_si : si parenthese_o cond separateur_si . expr separateur_si expr error

	error  shift 126
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 127
	fonction  goto 8
	instr_si  goto 9


97: shift-reduce conflict (shift 11, reduce 29) on error
97: shift-reduce conflict (shift 12, reduce 29) on plus
97: shift-reduce conflict (shift 13, reduce 29) on moins
97: shift-reduce conflict (shift 14, reduce 29) on prod
97: shift-reduce conflict (shift 15, reduce 29) on div
97: shift-reduce conflict (shift 16, reduce 29) on puis
97: shift-reduce conflict (shift 48, reduce 29) on parenthese_f
97: shift-reduce conflict (shift 73, reduce 29) on inf
97: shift-reduce conflict (shift 74, reduce 29) on sup
97: shift-reduce conflict (shift 75, reduce 29) on ega
97: shift-reduce conflict (shift 128, reduce 29) on separateur_liste
state 97
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : parenthese_o error . parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : error . parenthese_o liste_cmp parenthese_f
	liste_cmp : error . separateur_liste cond
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	parenthese_f  shift 48
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 128
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 98
	instr_si : error parenthese_o cond . separateur_si expr separateur_si expr parenthese_f
	liste_cmp : cond .  (59)

	separateur_si  shift 86
	.  reduce 59


state 99
	cond : error parenthese_o liste_cmp . parenthese_f
	liste_cmp : liste_cmp . separateur_liste cond
	liste_cmp : liste_cmp . error cond
	liste_cmp : liste_cmp . separateur_liste error

	error  shift 129
	parenthese_f  shift 130
	separateur_liste  shift 131


100: shift-reduce conflict (shift 46, reduce 45) on error
state 100
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
	cond : error inf expr .  (45)

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 45


101: shift-reduce conflict (shift 46, reduce 47) on error
state 101
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
	cond : error sup expr .  (47)

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 47


102: shift-reduce conflict (shift 46, reduce 49) on error
state 102
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
	cond : error ega expr .  (49)

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 49


state 103
	liste : error separateur_liste liste .  (70)

	.  reduce 70


104: shift-reduce conflict (shift 11, reduce 29) on error
104: shift-reduce conflict (shift 12, reduce 29) on plus
104: shift-reduce conflict (shift 13, reduce 29) on moins
104: shift-reduce conflict (shift 14, reduce 29) on prod
104: shift-reduce conflict (shift 15, reduce 29) on div
104: shift-reduce conflict (shift 16, reduce 29) on puis
104: shift-reduce conflict (shift 73, reduce 29) on inf
104: shift-reduce conflict (shift 74, reduce 29) on sup
104: shift-reduce conflict (shift 75, reduce 29) on ega
104: shift-reduce conflict (shift 132, reduce 29) on separateur_liste
state 104
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : error . parenthese_o liste_cmp parenthese_f
	liste_cmp : error . separateur_liste cond
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 132
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 105
	liste_cmp : cond .  (59)

	.  reduce 59


state 106
	cond : or_op error liste_cmp . parenthese_f
	liste_cmp : liste_cmp . separateur_liste cond
	liste_cmp : liste_cmp . error cond
	liste_cmp : liste_cmp . separateur_liste error

	error  shift 129
	parenthese_f  shift 133
	separateur_liste  shift 131


107: shift-reduce conflict (shift 11, reduce 29) on error
107: shift-reduce conflict (shift 12, reduce 29) on plus
107: shift-reduce conflict (shift 13, reduce 29) on moins
107: shift-reduce conflict (shift 14, reduce 29) on prod
107: shift-reduce conflict (shift 15, reduce 29) on div
107: shift-reduce conflict (shift 16, reduce 29) on puis
107: shift-reduce conflict (shift 134, reduce 29) on parenthese_f
107: shift-reduce conflict (shift 73, reduce 29) on inf
107: shift-reduce conflict (shift 74, reduce 29) on sup
107: shift-reduce conflict (shift 75, reduce 29) on ega
107: shift-reduce conflict (shift 132, reduce 29) on separateur_liste
state 107
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : or_op parenthese_o error . parenthese_f
	cond : error . parenthese_o liste_cmp parenthese_f
	liste_cmp : error . separateur_liste cond
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	parenthese_f  shift 134
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 132

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 108
	cond : or_op parenthese_o liste_cmp . parenthese_f
	cond : or_op parenthese_o liste_cmp . error
	liste_cmp : liste_cmp . separateur_liste cond
	liste_cmp : liste_cmp . error cond
	liste_cmp : liste_cmp . separateur_liste error

	error  shift 135
	parenthese_f  shift 136
	separateur_liste  shift 131


state 109
	cond : and_op error liste_cmp . parenthese_f
	liste_cmp : liste_cmp . separateur_liste cond
	liste_cmp : liste_cmp . error cond
	liste_cmp : liste_cmp . separateur_liste error

	error  shift 129
	parenthese_f  shift 137
	separateur_liste  shift 131


110: shift-reduce conflict (shift 11, reduce 29) on error
110: shift-reduce conflict (shift 12, reduce 29) on plus
110: shift-reduce conflict (shift 13, reduce 29) on moins
110: shift-reduce conflict (shift 14, reduce 29) on prod
110: shift-reduce conflict (shift 15, reduce 29) on div
110: shift-reduce conflict (shift 16, reduce 29) on puis
110: shift-reduce conflict (shift 138, reduce 29) on parenthese_f
110: shift-reduce conflict (shift 73, reduce 29) on inf
110: shift-reduce conflict (shift 74, reduce 29) on sup
110: shift-reduce conflict (shift 75, reduce 29) on ega
110: shift-reduce conflict (shift 132, reduce 29) on separateur_liste
state 110
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : and_op parenthese_o error . parenthese_f
	cond : error . parenthese_o liste_cmp parenthese_f
	liste_cmp : error . separateur_liste cond
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	parenthese_f  shift 138
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 132

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 111
	cond : and_op parenthese_o liste_cmp . parenthese_f
	cond : and_op parenthese_o liste_cmp . error
	liste_cmp : liste_cmp . separateur_liste cond
	liste_cmp : liste_cmp . error cond
	liste_cmp : liste_cmp . separateur_liste error

	error  shift 139
	parenthese_f  shift 140
	separateur_liste  shift 131


112: shift-reduce conflict (shift 88, reduce 24) on error
112: shift-reduce conflict (shift 29, reduce 24) on plus
112: shift-reduce conflict (shift 30, reduce 24) on moins
112: shift-reduce conflict (shift 31, reduce 24) on prod
112: shift-reduce conflict (shift 32, reduce 24) on div
112: shift-reduce conflict (shift 33, reduce 24) on puis
112: shift-reduce conflict (shift 85, reduce 24) on separateur_liste
112: shift-reduce conflict (shift 88, reduce 69) on error
112: reduce-reduce conflict (reduce 24, reduce 69) on parenthese_f
state 112
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
	expr : expr error expr .  (24)
	expr : expr . error expr
	liste : expr . separateur_liste liste
	liste : expr .  (69)
	liste : expr . error liste
	liste : expr . separateur_liste error

	error  shift 88
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	separateur_liste  shift 85
	.  reduce 24


state 113
	liste : expr error liste .  (71)

	.  reduce 71


114: shift-reduce conflict (shift 11, reduce 29) on error
114: shift-reduce conflict (shift 12, reduce 29) on plus
114: shift-reduce conflict (shift 13, reduce 29) on moins
114: shift-reduce conflict (shift 14, reduce 29) on prod
114: shift-reduce conflict (shift 15, reduce 29) on div
114: shift-reduce conflict (shift 16, reduce 29) on puis
114: shift-reduce conflict (shift 11, reduce 46) on error
114: reduce-reduce conflict (reduce 29, reduce 46) on parenthese_f
114: reduce-reduce conflict (reduce 29, reduce 46) on separateur_liste
114: reduce-reduce conflict (reduce 29, reduce 46) on separateur_si
state 114
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : expr inf error .  (46)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


115: shift-reduce conflict (shift 46, reduce 39) on error
state 115
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
	cond : expr inf expr .  (39)

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 39


116: shift-reduce conflict (shift 11, reduce 29) on error
116: shift-reduce conflict (shift 12, reduce 29) on plus
116: shift-reduce conflict (shift 13, reduce 29) on moins
116: shift-reduce conflict (shift 14, reduce 29) on prod
116: shift-reduce conflict (shift 15, reduce 29) on div
116: shift-reduce conflict (shift 16, reduce 29) on puis
116: shift-reduce conflict (shift 11, reduce 48) on error
116: reduce-reduce conflict (reduce 29, reduce 48) on parenthese_f
116: reduce-reduce conflict (reduce 29, reduce 48) on separateur_liste
116: reduce-reduce conflict (reduce 29, reduce 48) on separateur_si
state 116
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : expr sup error .  (48)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


117: shift-reduce conflict (shift 46, reduce 40) on error
state 117
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
	cond : expr sup expr .  (40)

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 40


118: shift-reduce conflict (shift 11, reduce 29) on error
118: shift-reduce conflict (shift 12, reduce 29) on plus
118: shift-reduce conflict (shift 13, reduce 29) on moins
118: shift-reduce conflict (shift 14, reduce 29) on prod
118: shift-reduce conflict (shift 15, reduce 29) on div
118: shift-reduce conflict (shift 16, reduce 29) on puis
118: shift-reduce conflict (shift 11, reduce 50) on error
118: reduce-reduce conflict (reduce 29, reduce 50) on parenthese_f
118: reduce-reduce conflict (reduce 29, reduce 50) on separateur_liste
118: reduce-reduce conflict (reduce 29, reduce 50) on separateur_si
state 118
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : expr ega error .  (50)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


119: shift-reduce conflict (shift 46, reduce 41) on error
state 119
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
	cond : expr ega expr .  (41)

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	.  reduce 41


120: shift-reduce conflict (shift 11, reduce 29) on error
120: shift-reduce conflict (shift 12, reduce 29) on plus
120: shift-reduce conflict (shift 13, reduce 29) on moins
120: shift-reduce conflict (shift 14, reduce 29) on prod
120: shift-reduce conflict (shift 15, reduce 29) on div
120: shift-reduce conflict (shift 16, reduce 29) on puis
120: shift-reduce conflict (shift 76, reduce 29) on separateur_liste
120: shift-reduce conflict (shift 11, reduce 72) on error
120: reduce-reduce conflict (reduce 29, reduce 72) on parenthese_f
state 120
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste
	liste : expr separateur_liste error .  (72)

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 76
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 121
	liste : expr separateur_liste liste .  (68)

	.  reduce 68


state 122
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
	instr_si : error parenthese_o cond separateur_si expr . separateur_si expr parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	separateur_si  shift 141


state 123
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
	instr_si : si error cond separateur_si expr . separateur_si expr parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	separateur_si  shift 142


state 124
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
	instr_si : si parenthese_o error separateur_si expr . separateur_si expr parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	separateur_si  shift 143


state 125
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
	instr_si : si parenthese_o cond error expr . separateur_si expr parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	separateur_si  shift 144


126: shift-reduce conflict (shift 11, reduce 29) on error
126: shift-reduce conflict (shift 12, reduce 29) on plus
126: shift-reduce conflict (shift 13, reduce 29) on moins
126: shift-reduce conflict (shift 14, reduce 29) on prod
126: shift-reduce conflict (shift 15, reduce 29) on div
126: shift-reduce conflict (shift 16, reduce 29) on puis
126: shift-reduce conflict (shift 145, reduce 29) on separateur_si
state 126
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	instr_si : si parenthese_o cond separateur_si error . separateur_si expr parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_si  shift 145

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 127
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
	instr_si : si parenthese_o cond separateur_si expr . separateur_si expr parenthese_f
	instr_si : si parenthese_o cond separateur_si expr . error expr parenthese_f
	instr_si : si parenthese_o cond separateur_si expr . separateur_si error parenthese_f
	instr_si : si parenthese_o cond separateur_si expr . separateur_si expr error

	error  shift 146
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	separateur_si  shift 147


state 128
	liste_cmp : error separateur_liste . cond
	liste : error separateur_liste . liste

	error  shift 148
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 149
	fonction  goto 8
	instr_si  goto 9
	cond  goto 150
	liste  goto 103


state 129
	liste_cmp : liste_cmp error . cond

	error  shift 56
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 151


state 130
	cond : error parenthese_o liste_cmp parenthese_f .  (57)

	.  reduce 57


state 131
	liste_cmp : liste_cmp separateur_liste . cond
	liste_cmp : liste_cmp separateur_liste . error

	error  shift 152
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 153


state 132
	liste_cmp : error separateur_liste . cond

	error  shift 56
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 150


state 133
	cond : or_op error liste_cmp parenthese_f .  (51)

	.  reduce 51


state 134
	cond : or_op parenthese_o error parenthese_f .  (52)

	.  reduce 52


135: shift-reduce conflict (shift 56, reduce 53) on error
state 135
	cond : or_op parenthese_o liste_cmp error .  (53)
	liste_cmp : liste_cmp error . cond

	error  shift 56
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42
	.  reduce 53

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 151


state 136
	cond : or_op parenthese_o liste_cmp parenthese_f .  (42)

	.  reduce 42


state 137
	cond : and_op error liste_cmp parenthese_f .  (54)

	.  reduce 54


state 138
	cond : and_op parenthese_o error parenthese_f .  (55)

	.  reduce 55


139: shift-reduce conflict (shift 56, reduce 56) on error
state 139
	cond : and_op parenthese_o liste_cmp error .  (56)
	liste_cmp : liste_cmp error . cond

	error  shift 56
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	or_op  shift 41
	and_op  shift 42
	.  reduce 56

	expr  goto 57
	fonction  goto 8
	instr_si  goto 9
	cond  goto 151


state 140
	cond : and_op parenthese_o liste_cmp parenthese_f .  (43)

	.  reduce 43


state 141
	instr_si : error parenthese_o cond separateur_si expr separateur_si . expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 154
	fonction  goto 8
	instr_si  goto 9


state 142
	instr_si : si error cond separateur_si expr separateur_si . expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 155
	fonction  goto 8
	instr_si  goto 9


state 143
	instr_si : si parenthese_o error separateur_si expr separateur_si . expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 156
	fonction  goto 8
	instr_si  goto 9


state 144
	instr_si : si parenthese_o cond error expr separateur_si . expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 157
	fonction  goto 8
	instr_si  goto 9


state 145
	instr_si : si parenthese_o cond separateur_si error separateur_si . expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 158
	fonction  goto 8
	instr_si  goto 9


state 146
	expr : expr error . expr
	instr_si : si parenthese_o cond separateur_si expr error . expr parenthese_f

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 159
	fonction  goto 8
	instr_si  goto 9


state 147
	instr_si : si parenthese_o cond separateur_si expr separateur_si . expr parenthese_f
	instr_si : si parenthese_o cond separateur_si expr separateur_si . error parenthese_f
	instr_si : si parenthese_o cond separateur_si expr separateur_si . expr error

	error  shift 160
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 161
	fonction  goto 8
	instr_si  goto 9


148: shift-reduce conflict (shift 11, reduce 29) on error
148: shift-reduce conflict (shift 12, reduce 29) on plus
148: shift-reduce conflict (shift 13, reduce 29) on moins
148: shift-reduce conflict (shift 14, reduce 29) on prod
148: shift-reduce conflict (shift 15, reduce 29) on div
148: shift-reduce conflict (shift 16, reduce 29) on puis
148: shift-reduce conflict (shift 73, reduce 29) on inf
148: shift-reduce conflict (shift 74, reduce 29) on sup
148: shift-reduce conflict (shift 75, reduce 29) on ega
148: shift-reduce conflict (shift 76, reduce 29) on separateur_liste
state 148
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : error . parenthese_o liste_cmp parenthese_f
	fonction : error . parenthese_o liste parenthese_f
	liste : error . separateur_liste liste

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	separateur_liste  shift 76
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


149: shift-reduce conflict (shift 88, reduce 44) on error
149: shift-reduce conflict (shift 85, reduce 44) on separateur_liste
149: reduce-reduce conflict (reduce 44, reduce 69) on parenthese_f
state 149
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
	cond : expr . inf expr
	cond : expr . sup expr
	cond : expr . ega expr
	cond : expr .  (44)
	cond : expr . inf error
	cond : expr . sup error
	cond : expr . ega error
	liste : expr . separateur_liste liste
	liste : expr .  (69)
	liste : expr . error liste
	liste : expr . separateur_liste error

	error  shift 88
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	inf  shift 82
	sup  shift 83
	ega  shift 84
	separateur_liste  shift 85
	.  reduce 44


state 150
	liste_cmp : error separateur_liste cond .  (60)

	.  reduce 60


state 151
	liste_cmp : liste_cmp error cond .  (61)

	.  reduce 61


152: shift-reduce conflict (shift 11, reduce 29) on error
152: shift-reduce conflict (shift 12, reduce 29) on plus
152: shift-reduce conflict (shift 13, reduce 29) on moins
152: shift-reduce conflict (shift 14, reduce 29) on prod
152: shift-reduce conflict (shift 15, reduce 29) on div
152: shift-reduce conflict (shift 16, reduce 29) on puis
152: shift-reduce conflict (shift 73, reduce 29) on inf
152: shift-reduce conflict (shift 74, reduce 29) on sup
152: shift-reduce conflict (shift 75, reduce 29) on ega
152: shift-reduce conflict (shift 11, reduce 62) on error
152: reduce-reduce conflict (reduce 29, reduce 62) on parenthese_f
152: reduce-reduce conflict (reduce 29, reduce 62) on separateur_liste
state 152
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	cond : error . inf expr
	cond : error . sup expr
	cond : error . ega expr
	cond : error . parenthese_o liste_cmp parenthese_f
	liste_cmp : liste_cmp separateur_liste error .  (62)
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 72
	inf  shift 73
	sup  shift 74
	ega  shift 75
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 29

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 153
	liste_cmp : liste_cmp separateur_liste cond .  (58)

	.  reduce 58


state 154
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
	instr_si : error parenthese_o cond separateur_si expr separateur_si expr . parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 162


state 155
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
	instr_si : si error cond separateur_si expr separateur_si expr . parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 163


state 156
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
	instr_si : si parenthese_o error separateur_si expr separateur_si expr . parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 164


state 157
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
	instr_si : si parenthese_o cond error expr separateur_si expr . parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 165


state 158
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
	instr_si : si parenthese_o cond separateur_si error separateur_si expr . parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 166


159: shift-reduce conflict (shift 46, reduce 24) on error
159: shift-reduce conflict (shift 29, reduce 24) on plus
159: shift-reduce conflict (shift 30, reduce 24) on moins
159: shift-reduce conflict (shift 31, reduce 24) on prod
159: shift-reduce conflict (shift 32, reduce 24) on div
159: shift-reduce conflict (shift 33, reduce 24) on puis
state 159
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
	expr : expr error expr .  (24)
	expr : expr . error expr
	instr_si : si parenthese_o cond separateur_si expr error expr . parenthese_f

	error  shift 46
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 167
	.  reduce 24


160: shift-reduce conflict (shift 11, reduce 29) on error
160: shift-reduce conflict (shift 12, reduce 29) on plus
160: shift-reduce conflict (shift 13, reduce 29) on moins
160: shift-reduce conflict (shift 14, reduce 29) on prod
160: shift-reduce conflict (shift 15, reduce 29) on div
160: shift-reduce conflict (shift 16, reduce 29) on puis
160: shift-reduce conflict (shift 168, reduce 29) on parenthese_f
state 160
	expr : error . plus expr
	expr : error . moins expr
	expr : error . prod expr
	expr : error . div expr
	expr : error . puis expr
	expr : error . expr parenthese_f
	expr : error .  (29)
	instr_si : error . parenthese_o cond separateur_si expr separateur_si expr parenthese_f
	instr_si : si parenthese_o cond separateur_si expr separateur_si error . parenthese_f
	fonction : error . parenthese_o liste parenthese_f

	error  shift 11
	plus  shift 12
	moins  shift 13
	prod  shift 14
	div  shift 15
	puis  shift 16
	parenthese_o  shift 17
	parenthese_f  shift 168
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6

	expr  goto 19
	fonction  goto 8
	instr_si  goto 9


state 161
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
	instr_si : si parenthese_o cond separateur_si expr separateur_si expr . parenthese_f
	instr_si : si parenthese_o cond separateur_si expr separateur_si expr . error

	error  shift 169
	plus  shift 29
	moins  shift 30
	prod  shift 31
	div  shift 32
	puis  shift 33
	parenthese_f  shift 170


state 162
	instr_si : error parenthese_o cond separateur_si expr separateur_si expr parenthese_f .  (31)

	.  reduce 31


state 163
	instr_si : si error cond separateur_si expr separateur_si expr parenthese_f .  (32)

	.  reduce 32


state 164
	instr_si : si parenthese_o error separateur_si expr separateur_si expr parenthese_f .  (33)

	.  reduce 33


state 165
	instr_si : si parenthese_o cond error expr separateur_si expr parenthese_f .  (34)

	.  reduce 34


state 166
	instr_si : si parenthese_o cond separateur_si error separateur_si expr parenthese_f .  (35)

	.  reduce 35


state 167
	instr_si : si parenthese_o cond separateur_si expr error expr parenthese_f .  (36)

	.  reduce 36


state 168
	instr_si : si parenthese_o cond separateur_si expr separateur_si error parenthese_f .  (37)

	.  reduce 37


169: shift-reduce conflict (shift 11, reduce 38) on error
169: shift-reduce conflict (shift 2, reduce 38) on moins
state 169
	expr : expr error . expr
	instr_si : si parenthese_o cond separateur_si expr separateur_si expr error .  (38)

	error  shift 11
	moins  shift 2
	parenthese_o  shift 3
	nombre  shift 4
	nom_fonction  shift 5
	si  shift 6
	.  reduce 38

	expr  goto 61
	fonction  goto 8
	instr_si  goto 9


state 170
	instr_si : si parenthese_o cond separateur_si expr separateur_si expr parenthese_f .  (30)

	.  reduce 30


Rules never reduced
	cond : expr inf error  (46)
	cond : expr sup error  (48)
	cond : expr ega error  (50)
	liste_cmp : liste_cmp separateur_liste error  (62)
	liste : expr separateur_liste error  (72)


##############################################################################
# Summary
##############################################################################

State 1 contains 7 shift-reduce conflict(s)
State 11 contains 6 shift-reduce conflict(s)
State 20 contains 2 shift-reduce conflict(s)
State 20 contains 12 reduce-reduce conflict(s)
State 21 contains 1 shift-reduce conflict(s)
State 22 contains 7 shift-reduce conflict(s)
State 35 contains 1 shift-reduce conflict(s)
State 36 contains 2 shift-reduce conflict(s)
State 36 contains 6 reduce-reduce conflict(s)
State 37 contains 1 shift-reduce conflict(s)
State 38 contains 1 shift-reduce conflict(s)
State 39 contains 1 shift-reduce conflict(s)
State 40 contains 11 shift-reduce conflict(s)
State 43 contains 4 shift-reduce conflict(s)
State 49 contains 2 shift-reduce conflict(s)
State 51 contains 7 shift-reduce conflict(s)
State 52 contains 1 shift-reduce conflict(s)
State 54 contains 8 shift-reduce conflict(s)
State 56 contains 9 shift-reduce conflict(s)
State 57 contains 1 shift-reduce conflict(s)
State 59 contains 10 shift-reduce conflict(s)
State 61 contains 6 shift-reduce conflict(s)
State 62 contains 12 shift-reduce conflict(s)
State 62 contains 7 reduce-reduce conflict(s)
State 63 contains 1 shift-reduce conflict(s)
State 64 contains 12 shift-reduce conflict(s)
State 64 contains 7 reduce-reduce conflict(s)
State 65 contains 1 shift-reduce conflict(s)
State 66 contains 12 shift-reduce conflict(s)
State 66 contains 7 reduce-reduce conflict(s)
State 67 contains 1 shift-reduce conflict(s)
State 68 contains 12 shift-reduce conflict(s)
State 68 contains 7 reduce-reduce conflict(s)
State 69 contains 1 shift-reduce conflict(s)
State 70 contains 12 shift-reduce conflict(s)
State 70 contains 7 reduce-reduce conflict(s)
State 71 contains 1 shift-reduce conflict(s)
State 81 contains 2 shift-reduce conflict(s)
State 97 contains 11 shift-reduce conflict(s)
State 100 contains 1 shift-reduce conflict(s)
State 101 contains 1 shift-reduce conflict(s)
State 102 contains 1 shift-reduce conflict(s)
State 104 contains 10 shift-reduce conflict(s)
State 107 contains 11 shift-reduce conflict(s)
State 110 contains 11 shift-reduce conflict(s)
State 112 contains 8 shift-reduce conflict(s)
State 112 contains 1 reduce-reduce conflict(s)
State 114 contains 7 shift-reduce conflict(s)
State 114 contains 3 reduce-reduce conflict(s)
State 115 contains 1 shift-reduce conflict(s)
State 116 contains 7 shift-reduce conflict(s)
State 116 contains 3 reduce-reduce conflict(s)
State 117 contains 1 shift-reduce conflict(s)
State 118 contains 7 shift-reduce conflict(s)
State 118 contains 3 reduce-reduce conflict(s)
State 119 contains 1 shift-reduce conflict(s)
State 120 contains 8 shift-reduce conflict(s)
State 120 contains 1 reduce-reduce conflict(s)
State 126 contains 7 shift-reduce conflict(s)
State 135 contains 1 shift-reduce conflict(s)
State 139 contains 1 shift-reduce conflict(s)
State 148 contains 10 shift-reduce conflict(s)
State 149 contains 2 shift-reduce conflict(s)
State 149 contains 1 reduce-reduce conflict(s)
State 152 contains 10 shift-reduce conflict(s)
State 152 contains 2 reduce-reduce conflict(s)
State 159 contains 6 shift-reduce conflict(s)
State 160 contains 7 shift-reduce conflict(s)
State 169 contains 2 shift-reduce conflict(s)


21 token(s), 8 nonterminal(s)
73 grammar rule(s), 171 state(s)


##############################################################################
# End of File
##############################################################################
