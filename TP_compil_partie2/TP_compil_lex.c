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
* Time: 17:33:53
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
 pos++; return inf; 
#line 223 "TP_compil_lex.c"
		}
		break;
	case 9:
		{
#line 34 ".\\TP_compil_lex.l"
 pos++; return sup; 
#line 230 "TP_compil_lex.c"
		}
		break;
	case 10:
		{
#line 35 ".\\TP_compil_lex.l"
 pos++; return ega; 
#line 237 "TP_compil_lex.c"
		}
		break;
	case 11:
		{
#line 37 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 1; return nom_fonction;
#line 244 "TP_compil_lex.c"
		}
		break;
	case 12:
		{
#line 38 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 2; return nom_fonction;
#line 251 "TP_compil_lex.c"
		}
		break;
	case 13:
		{
#line 39 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 3; return nom_fonction;
#line 258 "TP_compil_lex.c"
		}
		break;
	case 14:
		{
#line 40 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 4; return nom_fonction;
#line 265 "TP_compil_lex.c"
		}
		break;
	case 15:
		{
#line 41 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 5; return nom_fonction;
#line 272 "TP_compil_lex.c"
		}
		break;
	case 16:
		{
#line 42 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 6; return nom_fonction;
#line 279 "TP_compil_lex.c"
		}
		break;
	case 17:
		{
#line 43 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.func = 7; return nom_fonction;
#line 286 "TP_compil_lex.c"
		}
		break;
	case 18:
		{
#line 45 ".\\TP_compil_lex.l"
 pos+=2; return si; 
#line 293 "TP_compil_lex.c"
		}
		break;
	case 19:
		{
#line 46 ".\\TP_compil_lex.l"
 pos+=2; return or_op; 
#line 300 "TP_compil_lex.c"
		}
		break;
	case 20:
		{
#line 47 ".\\TP_compil_lex.l"
 pos+=3; return and_op; 
#line 307 "TP_compil_lex.c"
		}
		break;
	case 21:
		{
#line 49 ".\\TP_compil_lex.l"
 pos +=yyleng; yylval.data = atof(yytext); return nombre; 
#line 314 "TP_compil_lex.c"
		}
		break;
	case 22:
		{
#line 51 ".\\TP_compil_lex.l"
 pos++; return separateur_liste; 
#line 321 "TP_compil_lex.c"
		}
		break;
	case 23:
		{
#line 52 ".\\TP_compil_lex.l"
 pos++; return separateur_si; 
#line 328 "TP_compil_lex.c"
		}
		break;
	case 24:
		{
#line 54 ".\\TP_compil_lex.l"
 pos +=yyleng; return fin_ligne; 
#line 335 "TP_compil_lex.c"
		}
		break;
	case 25:
		{
#line 55 ".\\TP_compil_lex.l"
pos +=yyleng;
#line 342 "TP_compil_lex.c"
		}
		break;
	case 26:
		{
#line 57 ".\\TP_compil_lex.l"
 printf("Erreur lexicale : entité lexicale non reconnue (%c) à la position %d.\n",yytext[0],pos); getch(); exit(1); 
#line 349 "TP_compil_lex.c"
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

int YYNEAR YYDCDECL yytransitionmax = 141;
YYCONST yytransition_t YYNEARFAR YYBASED_CODE YYDCDECL yytransition[] = {
	{ 0, 0 },
	{ 4, 1 },
	{ 5, 1 },
	{ 38, 20 },
	{ 41, 28 },
	{ 36, 19 },
	{ 50, 24 },
	{ 47, 31 },
	{ 47, 23 },
	{ 35, 26 },
	{ 37, 27 },
	{ 39, 20 },
	{ 42, 28 },
	{ 49, 31 },
	{ 48, 23 },
	{ 34, 18 },
	{ 44, 29 },
	{ 40, 20 },
	{ 43, 28 },
	{ 46, 30 },
	{ 44, 21 },
	{ 51, 32 },
	{ 53, 34 },
	{ 53, 35 },
	{ 4, 1 },
	{ 54, 36 },
	{ 55, 37 },
	{ 56, 38 },
	{ 57, 39 },
	{ 58, 40 },
	{ 56, 41 },
	{ 57, 42 },
	{ 6, 1 },
	{ 7, 1 },
	{ 8, 1 },
	{ 9, 1 },
	{ 10, 1 },
	{ 11, 1 },
	{ 59, 43 },
	{ 12, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 13, 1 },
	{ 60, 45 },
	{ 14, 1 },
	{ 15, 1 },
	{ 16, 1 },
	{ 17, 1 },
	{ 61, 46 },
	{ 62, 48 },
	{ 18, 1 },
	{ 63, 49 },
	{ 64, 50 },
	{ 65, 51 },
	{ 19, 1 },
	{ 45, 22 },
	{ 66, 54 },
	{ 67, 55 },
	{ 68, 58 },
	{ 69, 59 },
	{ 70, 60 },
	{ 71, 61 },
	{ 20, 1 },
	{ 72, 62 },
	{ 21, 1 },
	{ 22, 1 },
	{ 73, 63 },
	{ 74, 64 },
	{ 23, 1 },
	{ 75, 65 },
	{ 76, 66 },
	{ 24, 1 },
	{ 77, 67 },
	{ 78, 68 },
	{ 79, 69 },
	{ 80, 70 },
	{ 81, 71 },
	{ 82, 72 },
	{ 82, 73 },
	{ 25, 1 },
	{ 83, 74 },
	{ 84, 75 },
	{ 26, 1 },
	{ 85, 76 },
	{ 86, 77 },
	{ 87, 78 },
	{ 27, 1 },
	{ 88, 79 },
	{ 89, 80 },
	{ 90, 81 },
	{ 91, 83 },
	{ 92, 84 },
	{ 93, 85 },
	{ 94, 86 },
	{ 28, 1 },
	{ 95, 87 },
	{ 29, 1 },
	{ 30, 1 },
	{ 95, 88 },
	{ 96, 89 },
	{ 31, 1 },
	{ 96, 90 },
	{ 33, 13 },
	{ 32, 1 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 13, 13 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 52, 52 },
	{ 97, 91 },
	{ 98, 92 },
	{ 99, 93 },
	{ 100, 94 },
	{ 101, 97 },
	{ 101, 98 },
	{ 102, 99 },
	{ 103, 100 },
	{ 104, 102 },
	{ 104, 103 }
};

YYCONST yystate_t YYNEARFAR YYBASED_CODE YYDCDECL yystate[] = {
	{ 0, 0, 0 },
	{ -3, -8, 0 },
	{ 1, 0, 0 },
	{ 0, 0, 26 },
	{ 0, 0, 25 },
	{ 0, 0, 24 },
	{ 0, 0, 6 },
	{ 0, 0, 7 },
	{ 0, 0, 3 },
	{ 0, 0, 1 },
	{ 0, 0, 22 },
	{ 0, 0, 2 },
	{ 0, 0, 4 },
	{ 0, 63, 21 },
	{ 0, 0, 23 },
	{ 0, 0, 8 },
	{ 0, 0, 10 },
	{ 0, 0, 9 },
	{ 26, -63, 26 },
	{ 27, -62, 26 },
	{ 28, -62, 26 },
	{ 29, -62, 26 },
	{ 30, -20, 26 },
	{ 31, -65, 26 },
	{ 32, -59, 26 },
	{ 0, 0, 5 },
	{ 0, -101, 26 },
	{ 0, -89, 26 },
	{ 0, -93, 26 },
	{ 0, -98, 26 },
	{ 0, -95, 26 },
	{ 0, -98, 26 },
	{ 0, -76, 26 },
	{ 52, 0, 0 },
	{ 0, -46, 0 },
	{ 0, -77, 0 },
	{ 0, -40, 0 },
	{ 0, -71, 0 },
	{ 0, -61, 0 },
	{ 0, -50, 0 },
	{ 0, -60, 0 },
	{ 0, -90, 0 },
	{ 0, -79, 0 },
	{ 0, -83, 0 },
	{ 0, 0, 19 },
	{ 0, -29, 0 },
	{ 0, -56, 0 },
	{ 0, 0, 18 },
	{ 0, -21, 0 },
	{ 0, -51, 0 },
	{ 0, -23, 0 },
	{ 0, -54, 0 },
	{ 0, 73, 21 },
	{ 0, 0, 20 },
	{ 0, -19, 0 },
	{ 0, -50, 0 },
	{ 0, 0, 16 },
	{ 0, 0, 17 },
	{ 0, -4, 0 },
	{ 0, -35, 0 },
	{ 0, -1, 0 },
	{ 0, -32, 0 },
	{ 0, -7, 0 },
	{ 0, -36, 0 },
	{ 0, 1, 0 },
	{ 0, -29, 0 },
	{ 0, -7, 0 },
	{ 0, -37, 0 },
	{ 0, 2, 0 },
	{ 0, -29, 0 },
	{ 0, -3, 0 },
	{ 0, -34, 0 },
	{ 0, 15, 0 },
	{ 0, -16, 0 },
	{ 0, 22, 0 },
	{ 0, -9, 0 },
	{ 0, 45, 0 },
	{ 0, 46, 0 },
	{ 0, 14, 0 },
	{ 0, -16, 0 },
	{ 0, 22, 0 },
	{ 0, -9, 0 },
	{ 0, 0, 11 },
	{ 0, 19, 0 },
	{ 0, -12, 0 },
	{ 0, 15, 0 },
	{ 0, -16, 0 },
	{ 0, 33, 0 },
	{ 0, 4, 0 },
	{ 0, 22, 0 },
	{ 0, -8, 0 },
	{ 0, 64, 0 },
	{ 0, 33, 0 },
	{ 0, 44, 0 },
	{ 0, 13, 0 },
	{ 0, 0, 13 },
	{ 0, 0, 12 },
	{ 0, 66, 0 },
	{ 0, 35, 0 },
	{ 0, 57, 0 },
	{ 0, 26, 0 },
	{ 0, 0, 14 },
	{ 0, 70, 0 },
	{ 0, 39, 0 },
	{ 0, 0, 15 }
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
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0
};

#line 58 ".\\TP_compil_lex.l"


/////////////////////////////////////////////////////////////////////////////
// programs section
