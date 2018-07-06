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
* TP_compil_lex.c
* C source file generated from TP_compil_lex.l.
* 
* Date: 02/02/18
* Time: 17:34:26
* 
* ALex Version: 2.07
****************************************************************************/

#include <yylex.h>

/* namespaces */
#if defined(__cplusplus) && defined(YYSTDCPPLIB)
using namespace std;
#endif
#if defined(__cplusplus) && defined(YYNAMESPACE)
using namespace yl;
#endif

#define YYFASTLEXER

#line 1 ".\\TP_compil_lex.l"

/****************************************************************************
TP_compil_lex.l
ParserWizard generated Lex file.

Date: mardi 9 janvier 2018
****************************************************************************/

#include "TP_compil_yacc.h"
#include <math.h>

int pos=1;

#line 53 "TP_compil_lex.c"
/* repeated because of possible precompiled header */
#include <yylex.h>

/* namespaces */
#if defined(__cplusplus) && defined(YYSTDCPPLIB)
using namespace std;
#endif
#if defined(__cplusplus) && defined(YYNAMESPACE)
using namespace yl;
#endif

#define YYFASTLEXER

#include ".\TP_compil_lex.h"

#ifndef YYTEXT_SIZE
#define YYTEXT_SIZE 100
#endif
#ifndef YYUNPUT_SIZE
#define YYUNPUT_SIZE YYTEXT_SIZE
#endif
#ifndef YYTEXT_MAX
#define YYTEXT_MAX 0
#endif
#ifndef YYUNPUT_MAX
#define YYUNPUT_MAX YYTEXT_MAX
#endif

/* yytext */
static char YYNEAR yysatext[(YYTEXT_SIZE) + 1];		/* extra char for \0 */
char YYFAR *YYNEAR YYDCDECL yystext = yysatext;
char YYFAR *YYNEAR YYDCDECL yytext = yysatext;
int YYNEAR YYDCDECL yystext_size = (YYTEXT_SIZE);
int YYNEAR YYDCDECL yytext_size = (YYTEXT_SIZE);
int YYNEAR YYDCDECL yytext_max = (YYTEXT_MAX);

/* yystatebuf */
#if (YYTEXT_SIZE) != 0
static int YYNEAR yysastatebuf[(YYTEXT_SIZE)];
int YYFAR *YYNEAR YYDCDECL yysstatebuf = yysastatebuf;
int YYFAR *YYNEAR YYDCDECL yystatebuf = yysastatebuf;
#else
int YYFAR *YYNEAR YYDCDECL yysstatebuf = NULL;
int YYFAR *YYNEAR YYDCDECL yystatebuf = NULL;
#endif

/* yyunputbuf */
#if (YYUNPUT_SIZE) != 0
static int YYNEAR yysaunputbuf[(YYUNPUT_SIZE)];
int YYFAR *YYNEAR YYDCDECL yysunputbufptr = yysaunputbuf;
int YYFAR *YYNEAR YYDCDECL yyunputbufptr = yysaunputbuf;
#else
int YYFAR *YYNEAR YYDCDECL yysunputbufptr = NULL;
int YYFAR *YYNEAR YYDCDECL yyunputbufptr = NULL;
#endif
int YYNEAR YYDCDECL yysunput_size = (YYUNPUT_SIZE);
int YYNEAR YYDCDECL yyunput_size = (YYUNPUT_SIZE);
int YYNEAR YYDCDECL yyunput_max = (YYUNPUT_MAX);

/* backwards compatability with lex */
#ifdef input
#ifdef YYPROTOTYPE
int YYCDECL yyinput(void)
#else
int YYCDECL yyinput()
#endif
{
	return input();
}
#else
#define input yyinput
#endif

#ifdef output
#ifdef YYPROTOTYPE
void YYCDECL yyoutput(int ch)
#else
void YYCDECL yyoutput(ch)
int ch;
#endif
{
	output(ch);
}
#else
#define output yyoutput
#endif

#ifdef unput
#ifdef YYPROTOTYPE
void YYCDECL yyunput(int ch)
#else
void YYCDECL yyunput(ch)
int ch;
#endif
{
	unput(ch);
}
#else
#define unput yyunput
#endif

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn -rch		/* <warning: unreachable code> off */
#endif
#endif

#ifdef YYPROTOTYPE
int YYCDECL yylexeraction(int action)
#else
int YYCDECL yylexeraction(action)
int action;
#endif
{
	yyreturnflg = YYTRUE;
	switch (action) {
	case 1:
		{
#line 25 ".\\TP_compil_lex.l"
 pos++; return plus; 
#line 174 "TP_compil_lex.c"
		}
		break;
	case 2:
		{
#line 26 ".\\TP_compil_lex.l"
 pos++; return moins; 
#line 181 "TP_compil_lex.c"
		}
		break;
	case 3:
		{
#line 27 ".\\TP_compil_lex.l"
 pos++; return prod; 
#line 188 "TP_compil_lex.c"
		}
		break;
	case 4:
		{
#line 28 ".\\TP_compil_lex.l"
 pos++; return div; 
#line 195 "TP_compil_lex.c"
		}
		break;
	case 5:
		{
#line 29 ".\\TP_compil_lex.l"
 pos++; return puis; 
#line 202 "TP_compil_lex.c"
		}
		break;
	case 6:
		{
#line 30 ".\\TP_compil_lex.l"
 pos++; return parenthese_o; 
#line 209 "TP_compil_lex.c"
		}
		break;
	case 7:
		{
#line 31 ".\\TP_compil_lex.l"
 pos++; return parenthese_f; 
#line 216 "TP_compil_lex.c"
		}
		break;
	case 8:
		{
#line 33 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 1; return nom_fonction;
#line 223 "TP_compil_lex.c"
		}
		break;
	case 9:
		{
#line 34 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 2; return nom_fonction;
#line 230 "TP_compil_lex.c"
		}
		break;
	case 10:
		{
#line 35 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 3; return nom_fonction;
#line 237 "TP_compil_lex.c"
		}
		break;
	case 11:
		{
#line 36 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 4; return nom_fonction;
#line 244 "TP_compil_lex.c"
		}
		break;
	case 12:
		{
#line 37 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 5; return nom_fonction;
#line 251 "TP_compil_lex.c"
		}
		break;
	case 13:
		{
#line 38 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 6; return nom_fonction;
#line 258 "TP_compil_lex.c"
		}
		break;
	case 14:
		{
#line 39 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 7; return nom_fonction;
#line 265 "TP_compil_lex.c"
		}
		break;
	case 15:
		{
#line 41 ".\\TP_compil_lex.l"
 pos+=yyleng; yylval.symb = yytext; return variable; 
#line 272 "TP_compil_lex.c"
		}
		break;
	case 16:
		{
#line 43 ".\\TP_compil_lex.l"
 pos++; return separateur_liste; 
#line 279 "TP_compil_lex.c"
		}
		break;
	case 17:
		{
#line 45 ".\\TP_compil_lex.l"
 pos +=yyleng; return fin_ligne; 
#line 286 "TP_compil_lex.c"
		}
		break;
	case 18:
		{
#line 46 ".\\TP_compil_lex.l"
pos +=yyleng;
#line 293 "TP_compil_lex.c"
		}
		break;
	case 19:
		{
#line 48 ".\\TP_compil_lex.l"
 printf("Erreur lexicale : entité lexicale non reconnue (%c) à la position %d.\n",yytext[0],pos); getch(); exit(1); 
#line 300 "TP_compil_lex.c"
		}
		break;
	default:
		yyassert(0);
		break;
	}
	yyreturnflg = YYFALSE;
	return 0;
}

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn .rch		/* <warning: unreachable code> to the old state */
#endif
#endif
YYCONST yymatch_t YYNEARFAR YYBASED_CODE YYDCDECL yymatch[] = {
	0
};

int YYNEAR YYDCDECL yytransitionmax = 199;
YYCONST yytransition_t YYNEARFAR YYBASED_CODE YYDCDECL yytransition[] = {
	{ 0, 0 },
	{ 4, 1 },
	{ 5, 1 },
	{ 30, 21 },
	{ 27, 15 },
	{ 35, 17 },
	{ 37, 18 },
	{ 26, 20 },
	{ 25, 14 },
	{ 34, 22 },
	{ 36, 23 },
	{ 31, 21 },
	{ 28, 15 },
	{ 38, 24 },
	{ 39, 25 },
	{ 40, 26 },
	{ 41, 27 },
	{ 32, 21 },
	{ 29, 15 },
	{ 42, 28 },
	{ 43, 29 },
	{ 41, 30 },
	{ 42, 31 },
	{ 44, 32 },
	{ 4, 1 },
	{ 45, 33 },
	{ 46, 34 },
	{ 47, 35 },
	{ 48, 36 },
	{ 49, 37 },
	{ 50, 38 },
	{ 51, 39 },
	{ 6, 1 },
	{ 7, 1 },
	{ 8, 1 },
	{ 9, 1 },
	{ 10, 1 },
	{ 11, 1 },
	{ 52, 40 },
	{ 12, 1 },
	{ 53, 43 },
	{ 54, 44 },
	{ 55, 45 },
	{ 56, 46 },
	{ 57, 47 },
	{ 58, 48 },
	{ 59, 49 },
	{ 60, 50 },
	{ 61, 51 },
	{ 62, 52 },
	{ 63, 53 },
	{ 64, 54 },
	{ 65, 55 },
	{ 66, 56 },
	{ 67, 57 },
	{ 67, 58 },
	{ 68, 59 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 14, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 15, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 16, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 17, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 18, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 69, 60 },
	{ 70, 61 },
	{ 71, 62 },
	{ 19, 1 },
	{ 72, 63 },
	{ 73, 64 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 20, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 21, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 22, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 23, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 24, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 74, 65 },
	{ 75, 66 },
	{ 76, 68 },
	{ 77, 69 },
	{ 78, 70 },
	{ 79, 71 },
	{ 80, 72 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 80, 73 },
	{ 81, 74 },
	{ 81, 75 },
	{ 82, 76 },
	{ 13, 86 },
	{ 83, 77 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 13, 86 },
	{ 84, 78 },
	{ 85, 79 },
	{ 86, 82 },
	{ 86, 83 },
	{ 87, 84 },
	{ 88, 85 },
	{ 33, 16 },
	{ 89, 87 },
	{ 89, 88 }
};

YYCONST yystate_t YYNEARFAR YYBASED_CODE YYDCDECL yystate[] = {
	{ 0, 0, 0 },
	{ -3, -8, 0 },
	{ 1, 0, 0 },
	{ 0, 0, 19 },
	{ 0, 0, 18 },
	{ 0, 0, 17 },
	{ 0, 0, 6 },
	{ 0, 0, 7 },
	{ 0, 0, 3 },
	{ 0, 0, 1 },
	{ 0, 0, 16 },
	{ 0, 0, 2 },
	{ 0, 0, 4 },
	{ 86, 0, 15 },
	{ 20, -59, 15 },
	{ 21, -61, 15 },
	{ 22, 114, 15 },
	{ 23, -74, 15 },
	{ 24, -59, 15 },
	{ 0, 0, 5 },
	{ 86, -92, 15 },
	{ 86, -94, 15 },
	{ 86, -105, 15 },
	{ 86, -101, 15 },
	{ 86, -84, 15 },
	{ 86, -51, 15 },
	{ 86, -82, 15 },
	{ 86, -72, 15 },
	{ 86, -59, 15 },
	{ 86, -69, 15 },
	{ 86, -99, 15 },
	{ 86, -88, 15 },
	{ 86, -98, 15 },
	{ 86, -54, 15 },
	{ 86, -85, 15 },
	{ 86, -50, 15 },
	{ 86, -81, 15 },
	{ 86, -53, 15 },
	{ 86, -84, 15 },
	{ 86, -51, 15 },
	{ 86, -76, 15 },
	{ 86, 0, 13 },
	{ 86, 0, 14 },
	{ 86, -29, 15 },
	{ 86, -60, 15 },
	{ 86, -26, 15 },
	{ 86, -57, 15 },
	{ 86, -33, 15 },
	{ 86, -64, 15 },
	{ 86, -27, 15 },
	{ 86, -58, 15 },
	{ 86, -36, 15 },
	{ 86, -67, 15 },
	{ 86, -28, 15 },
	{ 86, -59, 15 },
	{ 86, -33, 15 },
	{ 86, -64, 15 },
	{ 86, -15, 15 },
	{ 86, -46, 15 },
	{ 86, -9, 15 },
	{ 86, -14, 15 },
	{ 86, 39, 15 },
	{ 86, 40, 15 },
	{ 86, 9, 15 },
	{ 86, -22, 15 },
	{ 86, 52, 15 },
	{ 86, 21, 15 },
	{ 86, 0, 8 },
	{ 86, 49, 15 },
	{ 86, 18, 15 },
	{ 0, 45, 0 },
	{ 0, 14, 0 },
	{ 86, 62, 15 },
	{ 86, 57, 15 },
	{ 86, 75, 15 },
	{ 86, 44, 15 },
	{ 86, 94, 15 },
	{ 86, 64, 15 },
	{ 0, 101, 0 },
	{ 0, 70, 0 },
	{ 86, 0, 10 },
	{ 86, 0, 9 },
	{ 86, 123, 15 },
	{ 86, 92, 15 },
	{ 0, 114, 0 },
	{ 0, 83, 0 },
	{ 0, 67, 11 },
	{ 0, 128, 0 },
	{ 0, 97, 0 },
	{ 0, 0, 12 }
};

YYCONST yybackup_t YYNEARFAR YYBASED_CODE YYDCDECL yybackup[] = {
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0
};

#line 49 ".\\TP_compil_lex.l"


/////////////////////////////////////////////////////////////////////////////
// programs section
