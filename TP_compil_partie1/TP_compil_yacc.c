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
* TP_compil_yacc.c
* C source file generated from TP_compil_yacc.y.
* 
* Date: 02/02/18
* Time: 16:29:40
* 
* AYACC Version: 2.07
****************************************************************************/

#include <yypars.h>

/* namespaces */
#if defined(__cplusplus) && defined(YYSTDCPPLIB)
using namespace std;
#endif
#if defined(__cplusplus) && defined(YYNAMESPACE)
using namespace yl;
#endif

#define YYFASTPARSER

#line 1 ".\\TP_compil_yacc.y"

/****************************************************************************
TP_compil_yacc.y
ParserWizard generated YACC file.

Date: mardi 9 janvier 2018
****************************************************************************/

#include "TP_compil_lex.h"
#include <math.h>


#line 52 "TP_compil_yacc.c"
/* repeated because of possible precompiled header */
#include <yypars.h>

/* namespaces */
#if defined(__cplusplus) && defined(YYSTDCPPLIB)
using namespace std;
#endif
#if defined(__cplusplus) && defined(YYNAMESPACE)
using namespace yl;
#endif

#define YYFASTPARSER

#include ".\TP_compil_yacc.h"

#ifndef YYSTYPE
#define YYSTYPE int
#endif
#ifndef YYSTACK_SIZE
#define YYSTACK_SIZE 100
#endif
#ifndef YYSTACK_MAX
#define YYSTACK_MAX 0
#endif

/* (state) stack */
#if (YYSTACK_SIZE) != 0
static yystack_t YYNEAR yystack[(YYSTACK_SIZE)];
yystack_t YYFAR *YYNEAR YYDCDECL yysstackptr = yystack;
yystack_t YYFAR *YYNEAR YYDCDECL yystackptr = yystack;
#else
yystack_t YYFAR *YYNEAR YYDCDECL yysstackptr = NULL;
yystack_t YYFAR *YYNEAR YYDCDECL yystackptr = NULL;
#endif

/* attribute stack */
#if (YYSTACK_SIZE) != 0
static YYSTYPE YYNEAR yyattributestack[(YYSTACK_SIZE)];
#ifdef YYPROTOTYPE
void YYFAR *YYNEAR YYDCDECL yysattributestackptr = yyattributestack;
void YYFAR *YYNEAR YYDCDECL yyattributestackptr = yyattributestack;
#else
char YYFAR *YYNEAR YYDCDECL yysattributestackptr = (char YYFAR *) yyattributestack;
char YYFAR *YYNEAR YYDCDECL yyattributestackptr = (char YYFAR *) yyattributestack;
#endif
#else
#ifdef YYPROTOTYPE
void YYFAR *YYNEAR YYDCDECL yysattributestackptr = NULL;
void YYFAR *YYNEAR YYDCDECL yyattributestackptr = NULL;
#else
char YYFAR *YYNEAR YYDCDECL yysattributestackptr = NULL;
char YYFAR *YYNEAR YYDCDECL yyattributestackptr = NULL;
#endif
#endif

int YYNEAR YYDCDECL yysstack_size = (YYSTACK_SIZE);
int YYNEAR YYDCDECL yystack_size = (YYSTACK_SIZE);
int YYNEAR YYDCDECL yystack_max = (YYSTACK_MAX);

/* attributes */
YYSTYPE YYNEAR yyval;
YYSTYPE YYNEAR yylval;
#ifdef YYPROTOTYPE
void YYFAR *YYNEAR YYDCDECL yyvalptr = &yyval;
void YYFAR *YYNEAR YYDCDECL yylvalptr = &yylval;
#else
char YYFAR *YYNEAR YYDCDECL yyvalptr = (char *) &yyval;
char YYFAR *YYNEAR YYDCDECL yylvalptr = (char *) &yylval;
#endif

size_t YYNEAR YYDCDECL yyattribute_size = sizeof(YYSTYPE);

/* yyattribute */
#ifdef YYDEBUG
#ifdef YYPROTOTYPE
static YYSTYPE YYFAR *yyattribute1(int index)
#else
static YYSTYPE YYFAR *yyattribute1(index)
int index;
#endif
{
	YYSTYPE YYFAR *p = &((YYSTYPE YYFAR *) yyattributestackptr)[yytop + index];
	return p;
}
#define yyattribute(index) (*yyattribute1(index))
#else
#define yyattribute(index) (((YYSTYPE YYFAR *) yyattributestackptr)[yytop + (index)])
#endif

#ifdef YYDEBUG
#ifdef YYPROTOTYPE
static void yyinitdebug(YYSTYPE YYFAR **p, int count)
#else
static void yyinitdebug(p, count)
YYSTYPE YYFAR **p;
int count;
#endif
{
	int i;
	yyassert(p != NULL);
	yyassert(count >= 1);

	for (i = 0; i < count; i++) {
		p[i] = &((YYSTYPE YYFAR *) yyattributestackptr)[yytop + i - (count - 1)];
	}
}
#endif

#ifdef YYPROTOTYPE
void YYCDECL yyparseraction(int action)
#else
void YYCDECL yyparseraction(action)
int action;
#endif
{
	switch (action) {
	case 0:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yya, 3);
#endif
			{
#line 25 ".\\TP_compil_yacc.y"

			printf("Expression syntaxiquement correcte.\n");
			getch();
			exit(0);
		
#line 182 "TP_compil_yacc.c"
			}
		}
		break;
	case 1:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yya, 3);
#endif
			{
#line 30 ".\\TP_compil_yacc.y"
 yyerror("il n'y a pas d'expression à analyser.\n"); getch(); exit(1); 
#line 195 "TP_compil_yacc.c"
			}
		}
		break;
	case 2:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yya, 3);
#endif
			{
#line 31 ".\\TP_compil_yacc.y"
 yyerror("fin de ligne attendue.\n"); getch(); exit(1); 
#line 208 "TP_compil_yacc.c"
			}
		}
		break;
	case 3:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 41 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '+'.\n"); getch(); exit(1); 
#line 221 "TP_compil_yacc.c"
			}
		}
		break;
	case 4:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 42 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '+'.\n"); getch(); exit(1); 
#line 234 "TP_compil_yacc.c"
			}
		}
		break;
	case 5:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 43 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '-'.\n"); getch(); exit(1); 
#line 247 "TP_compil_yacc.c"
			}
		}
		break;
	case 6:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 44 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '-'.\n"); getch(); exit(1); 
#line 260 "TP_compil_yacc.c"
			}
		}
		break;
	case 7:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 45 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '*'.\n"); getch(); exit(1); 
#line 273 "TP_compil_yacc.c"
			}
		}
		break;
	case 8:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 46 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '*'.\n"); getch(); exit(1); 
#line 286 "TP_compil_yacc.c"
			}
		}
		break;
	case 9:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 47 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '/'.\n"); getch(); exit(1); 
#line 299 "TP_compil_yacc.c"
			}
		}
		break;
	case 10:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 48 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '/'.\n"); getch(); exit(1); 
#line 312 "TP_compil_yacc.c"
			}
		}
		break;
	case 11:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 49 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '^'.\n"); getch(); exit(1); 
#line 325 "TP_compil_yacc.c"
			}
		}
		break;
	case 12:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 50 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '^'.\n"); getch(); exit(1); 
#line 338 "TP_compil_yacc.c"
			}
		}
		break;
	case 13:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 51 ".\\TP_compil_yacc.y"
 yyerror("opération manquante entre deux expressions.\n"); getch(); exit(1); 
#line 351 "TP_compil_yacc.c"
			}
		}
		break;
	case 14:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yya, 3);
#endif
			{
#line 52 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '-'.\n"); getch(); exit(1); 
#line 364 "TP_compil_yacc.c"
			}
		}
		break;
	case 15:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 53 ".\\TP_compil_yacc.y"
 yyerror("'(' attendue avant expression.\n"); getch(); exit(1); 
#line 377 "TP_compil_yacc.c"
			}
		}
		break;
	case 16:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 54 ".\\TP_compil_yacc.y"
 yyerror("expression attendue entre '(' et ')'.\n"); getch(); exit(1); 
#line 390 "TP_compil_yacc.c"
			}
		}
		break;
	case 17:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 55 ".\\TP_compil_yacc.y"
 yyerror("')' attendue après expression.\n"); getch(); exit(1); 
#line 403 "TP_compil_yacc.c"
			}
		}
		break;
	case 18:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 56 ".\\TP_compil_yacc.y"
 yyerror("un nombre attendu.\n"); getch(); exit(1); 
#line 416 "TP_compil_yacc.c"
			}
		}
		break;
	default:
		yyassert(0);
		break;
	}
}
#ifdef YYDEBUG
YYCONST yysymbol_t YYNEARFAR YYBASED_CODE YYDCDECL yysymbol[] = {
	{ "$end", 0 },
	{ "error", 256 },
	{ "plus", 257 },
	{ "moins", 258 },
	{ "prod", 259 },
	{ "div", 260 },
	{ "puis", 261 },
	{ "parenthese_o", 262 },
	{ "parenthese_f", 263 },
	{ "nombre", 264 },
	{ "fin_ligne", 265 },
	{ NULL, 0 }
};

YYCONST char *YYCONST YYNEARFAR YYBASED_CODE YYDCDECL yyrule[] = {
	"$accept: ligne",
	"ligne: expr fin_ligne",
	"ligne: error fin_ligne",
	"ligne: expr error",
	"expr: expr plus expr",
	"expr: expr moins expr",
	"expr: expr prod expr",
	"expr: expr div expr",
	"expr: expr puis expr",
	"expr: moins expr",
	"expr: parenthese_o expr parenthese_f",
	"expr: nombre",
	"expr: expr plus error",
	"expr: error plus expr",
	"expr: expr moins error",
	"expr: error moins expr",
	"expr: expr prod error",
	"expr: error prod expr",
	"expr: expr div error",
	"expr: error div expr",
	"expr: expr puis error",
	"expr: error puis expr",
	"expr: expr error expr",
	"expr: moins error",
	"expr: error expr parenthese_f",
	"expr: parenthese_o error parenthese_f",
	"expr: parenthese_o expr error",
	"expr: error"
};
#endif

YYCONST yyreduction_t YYNEARFAR YYBASED_CODE YYDCDECL yyreduction[] = {
	{ 0, 1, -1 },
	{ 1, 2, 0 },
	{ 1, 2, 1 },
	{ 1, 2, 2 },
	{ 2, 3, -1 },
	{ 2, 3, -1 },
	{ 2, 3, -1 },
	{ 2, 3, -1 },
	{ 2, 3, -1 },
	{ 2, 2, -1 },
	{ 2, 3, -1 },
	{ 2, 1, -1 },
	{ 2, 3, 3 },
	{ 2, 3, 4 },
	{ 2, 3, 5 },
	{ 2, 3, 6 },
	{ 2, 3, 7 },
	{ 2, 3, 8 },
	{ 2, 3, 9 },
	{ 2, 3, 10 },
	{ 2, 3, 11 },
	{ 2, 3, 12 },
	{ 2, 3, 13 },
	{ 2, 2, 14 },
	{ 2, 3, 15 },
	{ 2, 3, 16 },
	{ 2, 3, 17 },
	{ 2, 1, 18 }
};

int YYNEAR YYDCDECL yytokenaction_size = 173;
YYCONST yytokenaction_t YYNEARFAR YYBASED_CODE YYDCDECL yytokenaction[] = {
	{ 45, YYAT_SHIFT, 7 },
	{ 45, YYAT_SHIFT, 8 },
	{ 45, YYAT_SHIFT, 9 },
	{ 45, YYAT_SHIFT, 10 },
	{ 45, YYAT_SHIFT, 11 },
	{ 45, YYAT_SHIFT, 12 },
	{ 45, YYAT_SHIFT, 3 },
	{ 24, YYAT_SHIFT, 45 },
	{ 45, YYAT_SHIFT, 4 },
	{ 43, YYAT_SHIFT, 7 },
	{ 43, YYAT_SHIFT, 8 },
	{ 43, YYAT_SHIFT, 9 },
	{ 43, YYAT_SHIFT, 10 },
	{ 43, YYAT_SHIFT, 11 },
	{ 43, YYAT_SHIFT, 12 },
	{ 43, YYAT_SHIFT, 3 },
	{ 23, YYAT_SHIFT, 43 },
	{ 43, YYAT_SHIFT, 4 },
	{ 41, YYAT_SHIFT, 7 },
	{ 41, YYAT_SHIFT, 8 },
	{ 41, YYAT_SHIFT, 9 },
	{ 41, YYAT_SHIFT, 10 },
	{ 41, YYAT_SHIFT, 11 },
	{ 41, YYAT_SHIFT, 12 },
	{ 41, YYAT_SHIFT, 3 },
	{ 22, YYAT_SHIFT, 41 },
	{ 41, YYAT_SHIFT, 4 },
	{ 39, YYAT_SHIFT, 7 },
	{ 39, YYAT_SHIFT, 8 },
	{ 39, YYAT_SHIFT, 9 },
	{ 39, YYAT_SHIFT, 10 },
	{ 39, YYAT_SHIFT, 11 },
	{ 39, YYAT_SHIFT, 12 },
	{ 39, YYAT_SHIFT, 3 },
	{ 21, YYAT_SHIFT, 39 },
	{ 39, YYAT_SHIFT, 4 },
	{ 37, YYAT_SHIFT, 7 },
	{ 37, YYAT_SHIFT, 8 },
	{ 37, YYAT_SHIFT, 9 },
	{ 37, YYAT_SHIFT, 10 },
	{ 37, YYAT_SHIFT, 11 },
	{ 37, YYAT_SHIFT, 12 },
	{ 37, YYAT_SHIFT, 3 },
	{ 20, YYAT_SHIFT, 37 },
	{ 37, YYAT_SHIFT, 4 },
	{ 15, YYAT_SHIFT, 7 },
	{ 15, YYAT_SHIFT, 8 },
	{ 15, YYAT_SHIFT, 9 },
	{ 15, YYAT_SHIFT, 10 },
	{ 15, YYAT_SHIFT, 11 },
	{ 15, YYAT_SHIFT, 12 },
	{ 15, YYAT_SHIFT, 3 },
	{ 9, YYAT_SHIFT, 15 },
	{ 15, YYAT_SHIFT, 4 },
	{ 7, YYAT_SHIFT, 7 },
	{ 7, YYAT_SHIFT, 8 },
	{ 7, YYAT_SHIFT, 9 },
	{ 7, YYAT_SHIFT, 10 },
	{ 7, YYAT_SHIFT, 11 },
	{ 7, YYAT_SHIFT, 12 },
	{ 7, YYAT_SHIFT, 3 },
	{ 5, YYAT_ACCEPT, 0 },
	{ 7, YYAT_SHIFT, 4 },
	{ 27, YYAT_SHIFT, 31 },
	{ 27, YYAT_SHIFT, 20 },
	{ 27, YYAT_SHIFT, 21 },
	{ 27, YYAT_SHIFT, 22 },
	{ 27, YYAT_SHIFT, 23 },
	{ 27, YYAT_SHIFT, 24 },
	{ 1, YYAT_ERROR, 0 },
	{ 3, YYAT_SHIFT, 17 },
	{ 1, YYAT_SHIFT, 13 },
	{ 27, YYAT_REDUCE, 15 },
	{ 18, YYAT_SHIFT, 34 },
	{ 18, YYAT_SHIFT, 20 },
	{ 18, YYAT_SHIFT, 21 },
	{ 18, YYAT_SHIFT, 22 },
	{ 18, YYAT_SHIFT, 23 },
	{ 18, YYAT_SHIFT, 24 },
	{ 14, YYAT_SHIFT, 31 },
	{ 18, YYAT_SHIFT, 35 },
	{ 17, YYAT_SHIFT, 8 },
	{ 17, YYAT_SHIFT, 9 },
	{ 17, YYAT_SHIFT, 10 },
	{ 17, YYAT_SHIFT, 11 },
	{ 17, YYAT_SHIFT, 12 },
	{ 14, YYAT_SHIFT, 32 },
	{ 17, YYAT_SHIFT, 33 },
	{ 46, YYAT_SHIFT, 31 },
	{ 46, YYAT_SHIFT, 20 },
	{ 46, YYAT_SHIFT, 21 },
	{ 46, YYAT_SHIFT, 22 },
	{ 46, YYAT_SHIFT, 23 },
	{ 46, YYAT_SHIFT, 24 },
	{ 44, YYAT_SHIFT, 31 },
	{ 44, YYAT_SHIFT, 20 },
	{ 44, YYAT_SHIFT, 21 },
	{ 44, YYAT_SHIFT, 22 },
	{ 44, YYAT_SHIFT, 23 },
	{ 44, YYAT_SHIFT, 24 },
	{ 42, YYAT_SHIFT, 31 },
	{ 42, YYAT_SHIFT, 20 },
	{ 42, YYAT_SHIFT, 21 },
	{ 42, YYAT_SHIFT, 22 },
	{ 42, YYAT_SHIFT, 23 },
	{ 42, YYAT_SHIFT, 24 },
	{ 40, YYAT_SHIFT, 31 },
	{ 40, YYAT_SHIFT, 20 },
	{ 40, YYAT_SHIFT, 21 },
	{ 40, YYAT_SHIFT, 22 },
	{ 40, YYAT_SHIFT, 23 },
	{ 40, YYAT_SHIFT, 24 },
	{ 38, YYAT_SHIFT, 31 },
	{ 38, YYAT_SHIFT, 20 },
	{ 38, YYAT_SHIFT, 21 },
	{ 38, YYAT_SHIFT, 22 },
	{ 38, YYAT_SHIFT, 23 },
	{ 38, YYAT_SHIFT, 24 },
	{ 36, YYAT_SHIFT, 31 },
	{ 36, YYAT_SHIFT, 20 },
	{ 36, YYAT_SHIFT, 21 },
	{ 36, YYAT_SHIFT, 22 },
	{ 36, YYAT_SHIFT, 23 },
	{ 36, YYAT_SHIFT, 24 },
	{ 30, YYAT_SHIFT, 31 },
	{ 30, YYAT_SHIFT, 20 },
	{ 30, YYAT_SHIFT, 21 },
	{ 30, YYAT_SHIFT, 22 },
	{ 30, YYAT_SHIFT, 23 },
	{ 30, YYAT_SHIFT, 24 },
	{ 29, YYAT_SHIFT, 31 },
	{ 29, YYAT_SHIFT, 20 },
	{ 29, YYAT_SHIFT, 21 },
	{ 29, YYAT_SHIFT, 22 },
	{ 29, YYAT_SHIFT, 23 },
	{ 29, YYAT_SHIFT, 24 },
	{ 28, YYAT_SHIFT, 31 },
	{ 28, YYAT_SHIFT, 20 },
	{ 28, YYAT_SHIFT, 21 },
	{ 28, YYAT_SHIFT, 22 },
	{ 28, YYAT_SHIFT, 23 },
	{ 28, YYAT_SHIFT, 24 },
	{ 26, YYAT_SHIFT, 31 },
	{ 26, YYAT_SHIFT, 20 },
	{ 26, YYAT_SHIFT, 21 },
	{ 26, YYAT_SHIFT, 22 },
	{ 26, YYAT_SHIFT, 23 },
	{ 26, YYAT_SHIFT, 24 },
	{ 16, YYAT_SHIFT, 31 },
	{ 16, YYAT_SHIFT, 20 },
	{ 16, YYAT_SHIFT, 21 },
	{ 16, YYAT_SHIFT, 22 },
	{ 16, YYAT_SHIFT, 23 },
	{ 16, YYAT_SHIFT, 24 },
	{ 34, YYAT_SHIFT, 7 },
	{ 31, YYAT_SHIFT, 7 },
	{ 34, YYAT_SHIFT, 2 },
	{ 31, YYAT_SHIFT, 2 },
	{ 6, YYAT_SHIFT, 19 },
	{ 0, YYAT_SHIFT, 1 },
	{ 34, YYAT_SHIFT, 3 },
	{ 31, YYAT_SHIFT, 3 },
	{ 34, YYAT_SHIFT, 4 },
	{ 31, YYAT_SHIFT, 4 },
	{ 19, YYAT_SHIFT, 7 },
	{ 6, YYAT_ERROR, 0 },
	{ 19, YYAT_SHIFT, 2 },
	{ 6, YYAT_SHIFT, 25 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 19, YYAT_SHIFT, 3 },
	{ -1, YYAT_ERROR, 0 },
	{ 19, YYAT_SHIFT, 4 }
};

YYCONST yystateaction_t YYNEARFAR YYBASED_CODE YYDCDECL yystateaction[] = {
	{ -97, 1, YYAT_DEFAULT, 31 },
	{ -194, 1, YYAT_DEFAULT, 17 },
	{ 0, 0, YYAT_DEFAULT, 9 },
	{ -186, 1, YYAT_DEFAULT, 31 },
	{ 0, 0, YYAT_REDUCE, 11 },
	{ 61, 1, YYAT_ERROR, 0 },
	{ -98, 1, YYAT_DEFAULT, 18 },
	{ -202, 1, YYAT_REDUCE, 27 },
	{ 0, 0, YYAT_DEFAULT, 31 },
	{ -204, 1, YYAT_DEFAULT, 31 },
	{ 0, 0, YYAT_DEFAULT, 31 },
	{ 0, 0, YYAT_DEFAULT, 31 },
	{ 0, 0, YYAT_DEFAULT, 31 },
	{ 0, 0, YYAT_REDUCE, 2 },
	{ -177, 1, YYAT_DEFAULT, 18 },
	{ -211, 1, YYAT_REDUCE, 23 },
	{ -108, 1, YYAT_REDUCE, 9 },
	{ -176, 1, YYAT_DEFAULT, 31 },
	{ -183, 1, YYAT_ERROR, 0 },
	{ -92, 1, YYAT_REDUCE, 3 },
	{ -213, 1, YYAT_DEFAULT, 31 },
	{ -222, 1, YYAT_DEFAULT, 31 },
	{ -231, 1, YYAT_DEFAULT, 31 },
	{ -240, 1, YYAT_DEFAULT, 31 },
	{ -249, 1, YYAT_DEFAULT, 31 },
	{ 0, 0, YYAT_REDUCE, 1 },
	{ -114, 1, YYAT_REDUCE, 13 },
	{ -193, 1, YYAT_REDUCE, 9 },
	{ -120, 1, YYAT_REDUCE, 17 },
	{ -126, 1, YYAT_REDUCE, 19 },
	{ -132, 1, YYAT_REDUCE, 21 },
	{ -101, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 24 },
	{ 0, 0, YYAT_REDUCE, 25 },
	{ -102, 1, YYAT_REDUCE, 26 },
	{ 0, 0, YYAT_REDUCE, 10 },
	{ -138, 1, YYAT_REDUCE, 22 },
	{ -220, 1, YYAT_REDUCE, 12 },
	{ -144, 1, YYAT_REDUCE, 4 },
	{ -229, 1, YYAT_REDUCE, 14 },
	{ -150, 1, YYAT_REDUCE, 5 },
	{ -238, 1, YYAT_REDUCE, 16 },
	{ -156, 1, YYAT_REDUCE, 6 },
	{ -247, 1, YYAT_REDUCE, 18 },
	{ -162, 1, YYAT_REDUCE, 7 },
	{ -256, 1, YYAT_REDUCE, 20 },
	{ -168, 1, YYAT_REDUCE, 8 }
};

int YYNEAR YYDCDECL yynontermgoto_size = 16;

YYCONST yynontermgoto_t YYNEARFAR YYBASED_CODE YYDCDECL yynontermgoto[] = {
	{ 0, 5 },
	{ 0, 6 },
	{ 45, 14 },
	{ 34, 36 },
	{ 24, 46 },
	{ 23, 44 },
	{ 22, 42 },
	{ 21, 40 },
	{ 20, 38 },
	{ 12, 30 },
	{ 11, 29 },
	{ 10, 28 },
	{ 9, 27 },
	{ 8, 26 },
	{ 3, 18 },
	{ 2, 16 }
};

YYCONST yystategoto_t YYNEARFAR YYBASED_CODE YYDCDECL yystategoto[] = {
	{ -1, -1 },
	{ 0, 45 },
	{ 13, -1 },
	{ 12, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 45 },
	{ 11, -1 },
	{ 10, -1 },
	{ 9, -1 },
	{ 8, -1 },
	{ 7, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 45 },
	{ 0, -1 },
	{ 0, 45 },
	{ 0, -1 },
	{ 0, 34 },
	{ 6, -1 },
	{ 5, -1 },
	{ 4, -1 },
	{ 3, -1 },
	{ 2, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 34 },
	{ 0, -1 },
	{ 0, -1 },
	{ 1, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 45 },
	{ 0, -1 },
	{ 0, 45 },
	{ 0, -1 },
	{ 0, 45 },
	{ 0, -1 },
	{ 0, 45 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 }
};

YYCONST yydestructor_t YYNEARFAR *YYNEAR YYDCDECL yydestructorptr = NULL;

YYCONST yytokendest_t YYNEARFAR *YYNEAR YYDCDECL yytokendestptr = NULL;
int YYNEAR YYDCDECL yytokendest_size = 0;

YYCONST yytokendestbase_t YYNEARFAR *YYNEAR YYDCDECL yytokendestbaseptr = NULL;
int YYNEAR YYDCDECL yytokendestbase_size = 0;
#line 58 ".\\TP_compil_yacc.y"


/////////////////////////////////////////////////////////////////////////////
// programs section

int main(void)
{
	return yyparse();
}
