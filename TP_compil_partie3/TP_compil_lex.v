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
# Time: 17:34:26
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

    8  "somme"|"Somme"|"SOMME"

    9  "produit"|"Produit"|"PRODUIT"

   10  "moyenne"|"Moyenne"|"MOYENNE"

   11  "variance"|"Variance"|"VARIANCE"

   12  "ecart-type"|"Ecart-type"|"ECART-TYPE"

   13  "max"|"Max"|"MAX"

   14  "min"|"Min"|"MIN"

   15  [a-zA-Z]([a-zA-Z0-9]|"_")*

   16  ","

   17  \n

   18  [ \t]

   19  .


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
	0x30 - 0x40 (17)   goto 3
	0x41 - 0x44 (4)    goto 13
	0x45               goto 14
	0x46 - 0x4c (7)    goto 13
	0x4d               goto 15
	0x4e - 0x4f (2)    goto 13
	0x50               goto 16
	0x51 - 0x52 (2)    goto 13
	0x53               goto 17
	0x54 - 0x55 (2)    goto 13
	0x56               goto 18
	0x57 - 0x5a (4)    goto 13
	0x5b - 0x5d (3)    goto 3
	0x5e               goto 19
	0x5f - 0x60 (2)    goto 3
	0x61 - 0x64 (4)    goto 13
	0x65               goto 20
	0x66 - 0x6c (7)    goto 13
	0x6d               goto 21
	0x6e - 0x6f (2)    goto 13
	0x70               goto 22
	0x71 - 0x72 (2)    goto 13
	0x73               goto 23
	0x74 - 0x75 (2)    goto 13
	0x76               goto 24
	0x77 - 0x7a (4)    goto 13
	0x7b - 0xff (133)  goto 3


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
	0x30 - 0x40 (17)   goto 3
	0x41 - 0x44 (4)    goto 13
	0x45               goto 14
	0x46 - 0x4c (7)    goto 13
	0x4d               goto 15
	0x4e - 0x4f (2)    goto 13
	0x50               goto 16
	0x51 - 0x52 (2)    goto 13
	0x53               goto 17
	0x54 - 0x55 (2)    goto 13
	0x56               goto 18
	0x57 - 0x5a (4)    goto 13
	0x5b - 0x5d (3)    goto 3
	0x5e               goto 19
	0x5f - 0x60 (2)    goto 3
	0x61 - 0x64 (4)    goto 13
	0x65               goto 20
	0x66 - 0x6c (7)    goto 13
	0x6d               goto 21
	0x6e - 0x6f (2)    goto 13
	0x70               goto 22
	0x71 - 0x72 (2)    goto 13
	0x73               goto 23
	0x74 - 0x75 (2)    goto 13
	0x76               goto 24
	0x77 - 0x7a (4)    goto 13
	0x7b - 0xff (133)  goto 3


state 3
	match 19


state 4
	match 18


state 5
	match 17


state 6
	match 6


state 7
	match 7


state 8
	match 3


state 9
	match 1


state 10
	match 16


state 11
	match 2


state 12
	match 4


state 13
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 14
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x42 (2)    goto 13
	0x43               goto 25
	0x44 - 0x5a (23)   goto 13
	0x5f               goto 13
	0x61 - 0x62 (2)    goto 13
	0x63               goto 26
	0x64 - 0x7a (23)   goto 13

	match 15


state 15
	0x30 - 0x39 (10)   goto 13
	0x41               goto 27
	0x42 - 0x48 (7)    goto 13
	0x49               goto 28
	0x4a - 0x4e (5)    goto 13
	0x4f               goto 29
	0x50 - 0x5a (11)   goto 13
	0x5f               goto 13
	0x61               goto 30
	0x62 - 0x68 (7)    goto 13
	0x69               goto 31
	0x6a - 0x6e (5)    goto 13
	0x6f               goto 32
	0x70 - 0x7a (11)   goto 13

	match 15


state 16
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x51 (17)   goto 13
	0x52               goto 33
	0x53 - 0x5a (8)    goto 13
	0x5f               goto 13
	0x61 - 0x71 (17)   goto 13
	0x72               goto 34
	0x73 - 0x7a (8)    goto 13

	match 15


state 17
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4e (14)   goto 13
	0x4f               goto 35
	0x50 - 0x5a (11)   goto 13
	0x5f               goto 13
	0x61 - 0x6e (14)   goto 13
	0x6f               goto 36
	0x70 - 0x7a (11)   goto 13

	match 15


state 18
	0x30 - 0x39 (10)   goto 13
	0x41               goto 37
	0x42 - 0x5a (25)   goto 13
	0x5f               goto 13
	0x61               goto 38
	0x62 - 0x7a (25)   goto 13

	match 15


state 19
	match 5


state 20
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x62 (2)    goto 13
	0x63               goto 26
	0x64 - 0x7a (23)   goto 13

	match 15


state 21
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61               goto 30
	0x62 - 0x68 (7)    goto 13
	0x69               goto 31
	0x6a - 0x6e (5)    goto 13
	0x6f               goto 32
	0x70 - 0x7a (11)   goto 13

	match 15


state 22
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x71 (17)   goto 13
	0x72               goto 34
	0x73 - 0x7a (8)    goto 13

	match 15


state 23
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6e (14)   goto 13
	0x6f               goto 36
	0x70 - 0x7a (11)   goto 13

	match 15


state 24
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61               goto 38
	0x62 - 0x7a (25)   goto 13

	match 15


state 25
	0x30 - 0x39 (10)   goto 13
	0x41               goto 39
	0x42 - 0x5a (25)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 26
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61               goto 40
	0x62 - 0x7a (25)   goto 13

	match 15


state 27
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x57 (23)   goto 13
	0x58               goto 41
	0x59 - 0x5a (2)    goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 28
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4d (13)   goto 13
	0x4e               goto 42
	0x4f - 0x5a (12)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 29
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x58 (24)   goto 13
	0x59               goto 43
	0x5a               goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 30
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x77 (23)   goto 13
	0x78               goto 41
	0x79 - 0x7a (2)    goto 13

	match 15


state 31
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6d (13)   goto 13
	0x6e               goto 42
	0x6f - 0x7a (12)   goto 13

	match 15


state 32
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x78 (24)   goto 13
	0x79               goto 44
	0x7a               goto 13

	match 15


state 33
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4e (14)   goto 13
	0x4f               goto 45
	0x50 - 0x5a (11)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 34
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6e (14)   goto 13
	0x6f               goto 46
	0x70 - 0x7a (11)   goto 13

	match 15


state 35
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4c (12)   goto 13
	0x4d               goto 47
	0x4e - 0x5a (13)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 36
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6c (12)   goto 13
	0x6d               goto 48
	0x6e - 0x7a (13)   goto 13

	match 15


state 37
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x51 (17)   goto 13
	0x52               goto 49
	0x53 - 0x5a (8)    goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 38
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x71 (17)   goto 13
	0x72               goto 50
	0x73 - 0x7a (8)    goto 13

	match 15


state 39
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x51 (17)   goto 13
	0x52               goto 51
	0x53 - 0x5a (8)    goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 40
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x71 (17)   goto 13
	0x72               goto 52
	0x73 - 0x7a (8)    goto 13

	match 15


state 41
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 13


state 42
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 14


state 43
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x44 (4)    goto 13
	0x45               goto 53
	0x46 - 0x5a (21)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 44
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x64 (4)    goto 13
	0x65               goto 54
	0x66 - 0x7a (21)   goto 13

	match 15


state 45
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x43 (3)    goto 13
	0x44               goto 55
	0x45 - 0x5a (22)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 46
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x63 (3)    goto 13
	0x64               goto 56
	0x65 - 0x7a (22)   goto 13

	match 15


state 47
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4c (12)   goto 13
	0x4d               goto 57
	0x4e - 0x5a (13)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 48
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6c (12)   goto 13
	0x6d               goto 58
	0x6e - 0x7a (13)   goto 13

	match 15


state 49
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x48 (8)    goto 13
	0x49               goto 59
	0x4a - 0x5a (17)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 50
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x68 (8)    goto 13
	0x69               goto 60
	0x6a - 0x7a (17)   goto 13

	match 15


state 51
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x53 (19)   goto 13
	0x54               goto 61
	0x55 - 0x5a (6)    goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 52
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x73 (19)   goto 13
	0x74               goto 62
	0x75 - 0x7a (6)    goto 13

	match 15


state 53
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4d (13)   goto 13
	0x4e               goto 63
	0x4f - 0x5a (12)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 54
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6d (13)   goto 13
	0x6e               goto 64
	0x6f - 0x7a (12)   goto 13

	match 15


state 55
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x54 (20)   goto 13
	0x55               goto 65
	0x56 - 0x5a (5)    goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 56
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x74 (20)   goto 13
	0x75               goto 66
	0x76 - 0x7a (5)    goto 13

	match 15


state 57
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x44 (4)    goto 13
	0x45               goto 67
	0x46 - 0x5a (21)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 58
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x64 (4)    goto 13
	0x65               goto 67
	0x66 - 0x7a (21)   goto 13

	match 15


state 59
	0x30 - 0x39 (10)   goto 13
	0x41               goto 68
	0x42 - 0x5a (25)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 60
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61               goto 69
	0x62 - 0x7a (25)   goto 13

	match 15


state 61
	0x2d               goto 70
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 62
	0x2d               goto 71
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 63
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4d (13)   goto 13
	0x4e               goto 72
	0x4f - 0x5a (12)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 64
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6d (13)   goto 13
	0x6e               goto 73
	0x6f - 0x7a (12)   goto 13

	match 15


state 65
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x48 (8)    goto 13
	0x49               goto 74
	0x4a - 0x5a (17)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 66
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x68 (8)    goto 13
	0x69               goto 75
	0x6a - 0x7a (17)   goto 13

	match 15


state 67
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 8


state 68
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x4d (13)   goto 13
	0x4e               goto 76
	0x4f - 0x5a (12)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 69
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x6d (13)   goto 13
	0x6e               goto 77
	0x6f - 0x7a (12)   goto 13

	match 15


state 70
	0x54               goto 78


state 71
	0x74               goto 79


state 72
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x44 (4)    goto 13
	0x45               goto 80
	0x46 - 0x5a (21)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 73
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x64 (4)    goto 13
	0x65               goto 80
	0x66 - 0x7a (21)   goto 13

	match 15


state 74
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x53 (19)   goto 13
	0x54               goto 81
	0x55 - 0x5a (6)    goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 75
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x73 (19)   goto 13
	0x74               goto 81
	0x75 - 0x7a (6)    goto 13

	match 15


state 76
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x42 (2)    goto 13
	0x43               goto 82
	0x44 - 0x5a (23)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 77
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x62 (2)    goto 13
	0x63               goto 83
	0x64 - 0x7a (23)   goto 13

	match 15


state 78
	0x59               goto 84


state 79
	0x79               goto 85


state 80
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 10


state 81
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 9


state 82
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x44 (4)    goto 13
	0x45               goto 86
	0x46 - 0x5a (21)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 15


state 83
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x64 (4)    goto 13
	0x65               goto 86
	0x66 - 0x7a (21)   goto 13

	match 15


state 84
	0x50               goto 87


state 85
	0x70               goto 88


state 86
	0x30 - 0x39 (10)   goto 13
	0x41 - 0x5a (26)   goto 13
	0x5f               goto 13
	0x61 - 0x7a (26)   goto 13

	match 11


state 87
	0x45               goto 89


state 88
	0x65               goto 89


state 89
	match 12


#############################################################################
# Summary
#############################################################################

1 start state(s)
19 expression(s), 89 state(s)


#############################################################################
# End of File
#############################################################################
