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
* Time: 17:21:53
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
 pos +=yyleng; return nombre; 
#line 223 "TP_compil_lex.c"
		}
		break;
	case 9:
		{
#line 35 ".\\TP_compil_lex.l"
 pos +=yyleng; return fin_ligne; 
#line 230 "TP_compil_lex.c"
		}
		break;
	case 10:
		{
#line 36 ".\\TP_compil_lex.l"
pos +=yyleng;
#line 237 "TP_compil_lex.c"
		}
		break;
	case 11:
		{
#line 38 ".\\TP_compil_lex.l"
 printf("Erreur lexicale : entité lexicale non reconnue (%c) à la position %d.\n",yytext[0],pos); getch(); exit(1); 
#line 244 "TP_compil_lex.c"
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

int YYNEAR YYDCDECL yytransitionmax = 87;
YYCONST yytransition_t YYNEARFAR YYBASED_CODE YYDCDECL yytransition[] = {
	{ 0, 0 },
	{ 4, 1 },
	{ 5, 1 },
	{ 14, 12 },
	{ 0, 0 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 12, 12 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 4, 1 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 6, 1 },
	{ 7, 1 },
	{ 8, 1 },
	{ 9, 1 },
	{ 0, 0 },
	{ 10, 1 },
	{ 0, 0 },
	{ 11, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 12, 1 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 15, 15 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 0, 0 },
	{ 13, 1 }
};

YYCONST yystate_t YYNEARFAR YYBASED_CODE YYDCDECL yystate[] = {
	{ 0, 0, 0 },
	{ -3, -8, 0 },
	{ 1, 0, 0 },
	{ 0, 0, 11 },
	{ 0, 0, 10 },
	{ 0, 0, 9 },
	{ 0, 0, 6 },
	{ 0, 0, 7 },
	{ 0, 0, 3 },
	{ 0, 0, 1 },
	{ 0, 0, 2 },
	{ 0, 0, 4 },
	{ 0, -43, 8 },
	{ 0, 0, 5 },
	{ 15, 0, 0 },
	{ 0, 2, 8 }
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
	0
};

#line 39 ".\\TP_compil_lex.l"


/////////////////////////////////////////////////////////////////////////////
// programs section
