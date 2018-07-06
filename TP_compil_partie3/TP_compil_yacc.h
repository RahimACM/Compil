/****************************************************************************
*                         A C A D E M I C   C O P Y
* 
* This file was produced by an ACADEMIC COPY of Parser Generator. It is for
* use in non-commercial software only. An ACADEMIC COPY of Parser Generator
* can only be used by a student, or a member of an academic community. If
* however you want to use Parser Generator for commercial purposes then you
* will need to purchase a license. For more information see the online help or
* go to the Bumble-Bee Software homepage at:
* 
* http://www.bumblebeesoftware.com
* 
* This notice must remain present in the file. It cannot be removed.
****************************************************************************/

/****************************************************************************
* TP_compil_yacc.h
* C header file generated from TP_compil_yacc.y.
* 
* Date: 02/03/18
* Time: 21:28:24
* 
* AYACC Version: 2.07
****************************************************************************/

#ifndef _TP_COMPIL_YACC_H
#define _TP_COMPIL_YACC_H

#include <yypars.h>

#ifndef YYSTYPE
union tagYYSTYPE {
#line 33 ".\\TP_compil_yacc.y"

	char* symb;
	int func;
	struct node *list;

#line 40 "TP_compil_yacc.h"
};

#define YYSTYPE union tagYYSTYPE
#endif

extern YYSTYPE YYNEAR yylval;

#define plus 257
#define moins 258
#define prod 259
#define div 260
#define puis 261
#define parenthese_o 262
#define parenthese_f 263
#define variable 264
#define nom_fonction 265
#define separateur_liste 266
#define fin_ligne 267
#define moins_unaire 268
#endif
