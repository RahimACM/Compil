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
# Time: 17:33:53
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

    8  "<"

    9  ">"

   10  "="

   11  "somme"|"Somme"|"SOMME"

   12  "produit"|"Produit"|"PRODUIT"

   13  "moyenne"|"Moyenne"|"MOYENNE"

   14  "variance"|"Variance"|"VARIANCE"

   15  "ecart-type"|"Ecart-type"|"ECART-TYPE"

   16  "max"|"Max"|"MAX"

   17  "min"|"Min"|"MIN"

   18  "si"|"Si"|"SI"

   19  "or"|"Or"|"OR"

   20  "and"|"And"|"AND"

   21  [0-9]+(\.[0-9]+)?

   22  ","

   23  ";"

   24  \n

   25  [ \t]

   26  .


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
	0x2c               goto 10
	0x2d               goto 11
	0x2e               goto 3
	0x2f               goto 12
	0x30 - 0x39 (10)   goto 13
	0x3a               goto 3
	0x3b               goto 14
	0x3c               goto 15
	0x3d               goto 16
	0x3e               goto 17
	0x3f - 0x40 (2)    goto 3
	0x41               goto 18
	0x42 - 0x44 (3)    goto 3
	0x45               goto 19
	0x46 - 0x4c (7)    goto 3
	0x4d               goto 20
	0x4e               goto 3
	0x4f               goto 21
	0x50               goto 22
	0x51 - 0x52 (2)    goto 3
	0x53               goto 23
	0x54 - 0x55 (2)    goto 3
	0x56               goto 24
	0x57 - 0x5d (7)    goto 3
	0x5e               goto 25
	0x5f - 0x60 (2)    goto 3
	0x61               goto 26
	0x62 - 0x64 (3)    goto 3
	0x65               goto 27
	0x66 - 0x6c (7)    goto 3
	0x6d               goto 28
	0x6e               goto 3
	0x6f               goto 29
	0x70               goto 30
	0x71 - 0x72 (2)    goto 3
	0x73               goto 31
	0x74 - 0x75 (2)    goto 3
	0x76               goto 32
	0x77 - 0xff (137)  goto 3


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
	0x2c               goto 10
	0x2d               goto 11
	0x2e               goto 3
	0x2f               goto 12
	0x30 - 0x39 (10)   goto 13
	0x3a               goto 3
	0x3b               goto 14
	0x3c               goto 15
	0x3d               goto 16
	0x3e               goto 17
	0x3f - 0x40 (2)    goto 3
	0x41               goto 18
	0x42 - 0x44 (3)    goto 3
	0x45               goto 19
	0x46 - 0x4c (7)    goto 3
	0x4d               goto 20
	0x4e               goto 3
	0x4f               goto 21
	0x50               goto 22
	0x51 - 0x52 (2)    goto 3
	0x53               goto 23
	0x54 - 0x55 (2)    goto 3
	0x56               goto 24
	0x57 - 0x5d (7)    goto 3
	0x5e               goto 25
	0x5f - 0x60 (2)    goto 3
	0x61               goto 26
	0x62 - 0x64 (3)    goto 3
	0x65               goto 27
	0x66 - 0x6c (7)    goto 3
	0x6d               goto 28
	0x6e               goto 3
	0x6f               goto 29
	0x70               goto 30
	0x71 - 0x72 (2)    goto 3
	0x73               goto 31
	0x74 - 0x75 (2)    goto 3
	0x76               goto 32
	0x77 - 0xff (137)  goto 3


state 3
	match 26


state 4
	match 25


state 5
	match 24


state 6
	match 6


state 7
	match 7


state 8
	match 3


state 9
	match 1


state 10
	match 22


state 11
	match 2


state 12
	match 4


state 13
	0x2e               goto 33
	0x30 - 0x39 (10)   goto 13

	match 21


state 14
	match 23


state 15
	match 8


state 16
	match 10


state 17
	match 9


state 18
	0x4e               goto 34
	0x6e               goto 35

	match 26


state 19
	0x43               goto 36
	0x63               goto 37

	match 26


state 20
	0x41               goto 38
	0x49               goto 39
	0x4f               goto 40
	0x61               goto 41
	0x69               goto 42
	0x6f               goto 43

	match 26


state 21
	0x52               goto 44
	0x72               goto 44

	match 26


state 22
	0x52               goto 45
	0x72               goto 46

	match 26


state 23
	0x49               goto 47
	0x4f               goto 48
	0x69               goto 47
	0x6f               goto 49

	match 26


state 24
	0x41               goto 50
	0x61               goto 51

	match 26


state 25
	match 5


state 26
	0x6e               goto 35

	match 26


state 27
	0x63               goto 37

	match 26


state 28
	0x61               goto 41
	0x69               goto 42
	0x6f               goto 43

	match 26


state 29
	0x72               goto 44

	match 26


state 30
	0x72               goto 46

	match 26


state 31
	0x69               goto 47
	0x6f               goto 49

	match 26


state 32
	0x61               goto 51

	match 26


state 33
	0x30 - 0x39 (10)   goto 52


state 34
	0x44               goto 53


state 35
	0x64               goto 53


state 36
	0x41               goto 54


state 37
	0x61               goto 55


state 38
	0x58               goto 56


state 39
	0x4e               goto 57


state 40
	0x59               goto 58


state 41
	0x78               goto 56


state 42
	0x6e               goto 57


state 43
	0x79               goto 59


state 44
	match 19


state 45
	0x4f               goto 60


state 46
	0x6f               goto 61


state 47
	match 18


state 48
	0x4d               goto 62


state 49
	0x6d               goto 63


state 50
	0x52               goto 64


state 51
	0x72               goto 65


state 52
	0x30 - 0x39 (10)   goto 52

	match 21


state 53
	match 20


state 54
	0x52               goto 66


state 55
	0x72               goto 67


state 56
	match 16


state 57
	match 17


state 58
	0x45               goto 68


state 59
	0x65               goto 69


state 60
	0x44               goto 70


state 61
	0x64               goto 71


state 62
	0x4d               goto 72


state 63
	0x6d               goto 73


state 64
	0x49               goto 74


state 65
	0x69               goto 75


state 66
	0x54               goto 76


state 67
	0x74               goto 77


state 68
	0x4e               goto 78


state 69
	0x6e               goto 79


state 70
	0x55               goto 80


state 71
	0x75               goto 81


state 72
	0x45               goto 82


state 73
	0x65               goto 82


state 74
	0x41               goto 83


state 75
	0x61               goto 84


state 76
	0x2d               goto 85


state 77
	0x2d               goto 86


state 78
	0x4e               goto 87


state 79
	0x6e               goto 88


state 80
	0x49               goto 89


state 81
	0x69               goto 90


state 82
	match 11


state 83
	0x4e               goto 91


state 84
	0x6e               goto 92


state 85
	0x54               goto 93


state 86
	0x74               goto 94


state 87
	0x45               goto 95


state 88
	0x65               goto 95


state 89
	0x54               goto 96


state 90
	0x74               goto 96


state 91
	0x43               goto 97


state 92
	0x63               goto 98


state 93
	0x59               goto 99


state 94
	0x79               goto 100


state 95
	match 13


state 96
	match 12


state 97
	0x45               goto 101


state 98
	0x65               goto 101


state 99
	0x50               goto 102


state 100
	0x70               goto 103


state 101
	match 14


state 102
	0x45               goto 104


state 103
	0x65               goto 104


state 104
	match 15


#############################################################################
# Summary
#############################################################################

1 start state(s)
26 expression(s), 104 state(s)


#############################################################################
# End of File
#############################################################################
