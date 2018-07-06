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
* Date: 02/02/18
* Time: 20:16:18
* 
* AYACC Version: 2.07
****************************************************************************/

#ifndef _TP_COMPIL_YACC_H
#define _TP_COMPIL_YACC_H

#include <yypars.h>

#ifndef YYSTYPE
union tagYYSTYPE {
#line 38 ".\\TP_compil_yacc.y"

	double data;
	int booleen;
	int func;
	struct node *list;
	struct node_cmp *list_cmp;

#line 42 "TP_compil_yacc.h"
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
#define inf 264
#define sup 265
#define ega 266
#define nombre 267
#define nom_fonction 268
#define si 269
#define or_op 270
#define and_op 271
#define separateur_liste 272
#define separateur_si 273
#define fin_ligne 274
#define moins_unaire 275
#endif
