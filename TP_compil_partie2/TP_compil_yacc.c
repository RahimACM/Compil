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
* Time: 20:16:18
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

struct node{
	double data;
	struct node *next;
};
struct node_cmp{
	int value;
	struct node_cmp *next;
};

double somme(struct node *L);
double produit(struct node *L);
double moyenne(struct node *L);
double average_powered(struct node *L,int power);
double variance(struct node *L);
double ecart_type(struct node *L);
double max(struct node *L);
double min(struct node *L);
void insert_node(struct node **L,double data);
int operation_or(struct node_cmp *L);
int operation_and(struct node_cmp *L);
void insert_node_cmp(struct node_cmp **Liste,int value);

#line 73 "TP_compil_yacc.c"
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
#line 68 ".\\TP_compil_yacc.y"

			printf("Evaluation effectuée avec succés.\nLe résultat est : %f\n", yyattribute(1 - 2).data);
			getch();
			exit(0);
		
#line 203 "TP_compil_yacc.c"
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
#line 73 ".\\TP_compil_yacc.y"
 yyerror("il n'y a pas d'expression à évaluer.\n"); getch(); exit(1); 
#line 216 "TP_compil_yacc.c"
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
#line 74 ".\\TP_compil_yacc.y"
 yyerror("fin de ligne attendue.\n"); getch(); exit(1); 
#line 229 "TP_compil_yacc.c"
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
#line 76 ".\\TP_compil_yacc.y"
 yyval.data = yyattribute(1 - 3).data + yyattribute(3 - 3).data; 
#line 242 "TP_compil_yacc.c"
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
#line 77 ".\\TP_compil_yacc.y"
 yyval.data = yyattribute(1 - 3).data - yyattribute(3 - 3).data; 
#line 255 "TP_compil_yacc.c"
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
#line 78 ".\\TP_compil_yacc.y"
 yyval.data = yyattribute(1 - 3).data * yyattribute(3 - 3).data; 
#line 268 "TP_compil_yacc.c"
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
#line 79 ".\\TP_compil_yacc.y"
	if(yyattribute(3 - 3).data!=0)
								yyval.data = yyattribute(1 - 3).data / yyattribute(3 - 3).data;
							else {
								yyerror("erreur : division par zéro.");
								getch();
								exit(1);
							}
		
#line 288 "TP_compil_yacc.c"
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
#line 87 ".\\TP_compil_yacc.y"
 yyval.data = pow(yyattribute(1 - 3).data,yyattribute(3 - 3).data); 
#line 301 "TP_compil_yacc.c"
			}
		}
		break;
	case 8:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yya, 3);
#endif
			{
#line 88 ".\\TP_compil_yacc.y"
 yyval.data = -yyattribute(2 - 2).data; 
#line 314 "TP_compil_yacc.c"
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
#line 89 ".\\TP_compil_yacc.y"
 yyval.data = yyattribute(2 - 3).data; 
#line 327 "TP_compil_yacc.c"
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
#line 93 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '+'.\n"); getch(); exit(1); 
#line 340 "TP_compil_yacc.c"
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
#line 94 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '+'.\n"); getch(); exit(1); 
#line 353 "TP_compil_yacc.c"
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
#line 95 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '-'.\n"); getch(); exit(1); 
#line 366 "TP_compil_yacc.c"
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
#line 96 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '-'.\n"); getch(); exit(1); 
#line 379 "TP_compil_yacc.c"
			}
		}
		break;
	case 14:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 97 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '*'.\n"); getch(); exit(1); 
#line 392 "TP_compil_yacc.c"
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
#line 98 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '*'.\n"); getch(); exit(1); 
#line 405 "TP_compil_yacc.c"
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
#line 99 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '/'.\n"); getch(); exit(1); 
#line 418 "TP_compil_yacc.c"
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
#line 100 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '/'.\n"); getch(); exit(1); 
#line 431 "TP_compil_yacc.c"
			}
		}
		break;
	case 18:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 101 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '^'.\n"); getch(); exit(1); 
#line 444 "TP_compil_yacc.c"
			}
		}
		break;
	case 19:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 102 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '^'.\n"); getch(); exit(1); 
#line 457 "TP_compil_yacc.c"
			}
		}
		break;
	case 20:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 103 ".\\TP_compil_yacc.y"
 yyerror("opération manquante entre deux expressions.\n"); getch(); exit(1); 
#line 470 "TP_compil_yacc.c"
			}
		}
		break;
	case 21:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yya, 3);
#endif
			{
#line 104 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '-'.\n"); getch(); exit(1); 
#line 483 "TP_compil_yacc.c"
			}
		}
		break;
	case 22:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 105 ".\\TP_compil_yacc.y"
 yyerror("'(' attendue avant expression.\n"); getch(); exit(1); 
#line 496 "TP_compil_yacc.c"
			}
		}
		break;
	case 23:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 106 ".\\TP_compil_yacc.y"
 yyerror("expression attendue entre '(' et ')'.\n"); getch(); exit(1); 
#line 509 "TP_compil_yacc.c"
			}
		}
		break;
	case 24:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 107 ".\\TP_compil_yacc.y"
 yyerror("')' attendue après expression.\n"); getch(); exit(1); 
#line 522 "TP_compil_yacc.c"
			}
		}
		break;
	case 25:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 108 ".\\TP_compil_yacc.y"
 yyerror("fonction, instruction_si ou un nombre attendus.\n"); getch(); exit(1); 
#line 535 "TP_compil_yacc.c"
			}
		}
		break;
	case 26:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 110 ".\\TP_compil_yacc.y"

			if(yyattribute(3 - 8).booleen)	yyval.data=yyattribute(5 - 8).data;
			else	yyval.data=yyattribute(7 - 8).data;
		
#line 551 "TP_compil_yacc.c"
			}
		}
		break;
	case 27:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 114 ".\\TP_compil_yacc.y"

			yyerror("'si' manque dans l'instruction si"); getch(); exit(1);
		
#line 566 "TP_compil_yacc.c"
			}
		}
		break;
	case 28:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 117 ".\\TP_compil_yacc.y"

			yyerror("'(' manque dans l'instruction si"); getch(); exit(1);
		
#line 581 "TP_compil_yacc.c"
			}
		}
		break;
	case 29:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 120 ".\\TP_compil_yacc.y"

			yyerror("la condition manque dans l'instruction si"); getch(); exit(1);
		
#line 596 "TP_compil_yacc.c"
			}
		}
		break;
	case 30:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 123 ".\\TP_compil_yacc.y"

			yyerror("';' manque dans l'instruction si"); getch(); exit(1);
		
#line 611 "TP_compil_yacc.c"
			}
		}
		break;
	case 31:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 126 ".\\TP_compil_yacc.y"

			yyerror("expression 1 manque dans l'instruction si"); getch(); exit(1);
		
#line 626 "TP_compil_yacc.c"
			}
		}
		break;
	case 32:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 129 ".\\TP_compil_yacc.y"

			yyerror("';' manque dans l'instruction si"); getch(); exit(1);
		
#line 641 "TP_compil_yacc.c"
			}
		}
		break;
	case 33:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 132 ".\\TP_compil_yacc.y"

			yyerror("expression 2 manque dans l'instruction si"); getch(); exit(1);
		
#line 656 "TP_compil_yacc.c"
			}
		}
		break;
	case 34:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[9];
			yyinitdebug(yya, 9);
#endif
			{
#line 135 ".\\TP_compil_yacc.y"

			yyerror("')' manque dans l'instruction si"); getch(); exit(1);
		
#line 671 "TP_compil_yacc.c"
			}
		}
		break;
	case 35:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 139 ".\\TP_compil_yacc.y"

			if(yyattribute(1 - 3).data<yyattribute(3 - 3).data)	yyval.booleen=1;
			else		yyval.booleen=0;
		
#line 687 "TP_compil_yacc.c"
			}
		}
		break;
	case 36:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 143 ".\\TP_compil_yacc.y"

			if(yyattribute(1 - 3).data>yyattribute(3 - 3).data)	yyval.booleen=1;
			else		yyval.booleen=0;
		
#line 703 "TP_compil_yacc.c"
			}
		}
		break;
	case 37:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 147 ".\\TP_compil_yacc.y"

			if(yyattribute(1 - 3).data==yyattribute(3 - 3).data)	yyval.booleen=1;
			else		yyval.booleen=0;
		
#line 719 "TP_compil_yacc.c"
			}
		}
		break;
	case 38:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 151 ".\\TP_compil_yacc.y"
 yyval.booleen=operation_or(yyattribute(3 - 4).list_cmp); 
#line 732 "TP_compil_yacc.c"
			}
		}
		break;
	case 39:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 152 ".\\TP_compil_yacc.y"
 yyval.booleen=operation_and(yyattribute(3 - 4).list_cmp); 
#line 745 "TP_compil_yacc.c"
			}
		}
		break;
	case 40:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 153 ".\\TP_compil_yacc.y"

			if(yyattribute(1 - 1).data==0)	yyval.booleen=0;
			else		yyval.booleen=1;
		
#line 761 "TP_compil_yacc.c"
			}
		}
		break;
	case 41:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 157 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '<'"); getch(); exit(1); 
#line 774 "TP_compil_yacc.c"
			}
		}
		break;
	case 42:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 158 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '<'"); getch(); exit(1); 
#line 787 "TP_compil_yacc.c"
			}
		}
		break;
	case 43:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 159 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '>'"); getch(); exit(1); 
#line 800 "TP_compil_yacc.c"
			}
		}
		break;
	case 44:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 160 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '>'"); getch(); exit(1); 
#line 813 "TP_compil_yacc.c"
			}
		}
		break;
	case 45:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 161 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '='"); getch(); exit(1); 
#line 826 "TP_compil_yacc.c"
			}
		}
		break;
	case 46:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 162 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '='"); getch(); exit(1); 
#line 839 "TP_compil_yacc.c"
			}
		}
		break;
	case 47:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 163 ".\\TP_compil_yacc.y"
 yyerror("'(' manque au début l'instruction or"); getch(); exit(1); 
#line 852 "TP_compil_yacc.c"
			}
		}
		break;
	case 48:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 164 ".\\TP_compil_yacc.y"
 yyerror("erreur dans la liste des conditions dans l'instruction or"); getch(); exit(1); 
#line 865 "TP_compil_yacc.c"
			}
		}
		break;
	case 49:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 165 ".\\TP_compil_yacc.y"
 yyerror("'(' manque à la fin de l'instruction or"); getch(); exit(1); 
#line 878 "TP_compil_yacc.c"
			}
		}
		break;
	case 50:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 166 ".\\TP_compil_yacc.y"
 yyerror("'(' manque au début l'instruction and"); getch(); exit(1); 
#line 891 "TP_compil_yacc.c"
			}
		}
		break;
	case 51:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 167 ".\\TP_compil_yacc.y"
 yyerror("erreur dans la liste des conditions dans l'instruction and"); getch(); exit(1); 
#line 904 "TP_compil_yacc.c"
			}
		}
		break;
	case 52:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 168 ".\\TP_compil_yacc.y"
 yyerror("'(' manque à la fin de l'instruction and"); getch(); exit(1); 
#line 917 "TP_compil_yacc.c"
			}
		}
		break;
	case 53:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 169 ".\\TP_compil_yacc.y"
 yyerror("instruction or ou and attendus"); getch(); exit(1); 
#line 930 "TP_compil_yacc.c"
			}
		}
		break;
	case 54:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 171 ".\\TP_compil_yacc.y"
 insert_node_cmp(&yyattribute(1 - 3).list_cmp,yyattribute(3 - 3).booleen); yyval.list_cmp=yyattribute(1 - 3).list_cmp; 
#line 943 "TP_compil_yacc.c"
			}
		}
		break;
	case 55:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 172 ".\\TP_compil_yacc.y"
 insert_node_cmp(&yyval.list_cmp,yyattribute(1 - 1).booleen); 
#line 956 "TP_compil_yacc.c"
			}
		}
		break;
	case 56:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 173 ".\\TP_compil_yacc.y"
 yyerror("liste attendue avant ','."); getch(); exit(1); 
#line 969 "TP_compil_yacc.c"
			}
		}
		break;
	case 57:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 174 ".\\TP_compil_yacc.y"
 yyerror("',' attendue dans la liste."); getch(); exit(1); 
#line 982 "TP_compil_yacc.c"
			}
		}
		break;
	case 58:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 175 ".\\TP_compil_yacc.y"
 yyerror("condition attendue après ','."); getch(); exit(1); 
#line 995 "TP_compil_yacc.c"
			}
		}
		break;
	case 59:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 177 ".\\TP_compil_yacc.y"

			switch(yyattribute(1 - 4).func){
				case 1:
					yyval.data = somme(yyattribute(3 - 4).list);
					break;
				case 2:
					yyval.data = produit(yyattribute(3 - 4).list);
					break;
				case 3:
					yyval.data = moyenne(yyattribute(3 - 4).list);
					break;
				case 4:
					yyval.data = variance(yyattribute(3 - 4).list);
					break;
				case 5:
					yyval.data = ecart_type(yyattribute(3 - 4).list);
					break;
				case 6:
					yyval.data = max(yyattribute(3 - 4).list);
					break;
				case 7:
					yyval.data = min(yyattribute(3 - 4).list);
					break;
				//TODO default:
			}
		
#line 1033 "TP_compil_yacc.c"
			}
		}
		break;
	case 60:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 203 ".\\TP_compil_yacc.y"
 yyerror("nom de fonction erroné"); getch(); exit(1); 
#line 1046 "TP_compil_yacc.c"
			}
		}
		break;
	case 61:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 204 ".\\TP_compil_yacc.y"
 yyerror("'(' attendue après nom de fonction"); getch(); exit(1); 
#line 1059 "TP_compil_yacc.c"
			}
		}
		break;
	case 62:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 205 ".\\TP_compil_yacc.y"
 yyerror("erreur dans la liste des paramètres."); getch(); exit(1); 
#line 1072 "TP_compil_yacc.c"
			}
		}
		break;
	case 63:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 206 ".\\TP_compil_yacc.y"
 yyerror("')' attendue à la fin de la liste des paramètres."); getch(); exit(1); 
#line 1085 "TP_compil_yacc.c"
			}
		}
		break;
	case 64:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 208 ".\\TP_compil_yacc.y"
 insert_node(&yyattribute(3 - 3).list,yyattribute(1 - 3).data); yyval.list=yyattribute(3 - 3).list; 
#line 1098 "TP_compil_yacc.c"
			}
		}
		break;
	case 65:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 209 ".\\TP_compil_yacc.y"
 yyval.list=NULL; insert_node(&yyval.list,yyattribute(1 - 1).data); 
#line 1111 "TP_compil_yacc.c"
			}
		}
		break;
	case 66:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 210 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant ','."); getch(); exit(1); 
#line 1124 "TP_compil_yacc.c"
			}
		}
		break;
	case 67:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 211 ".\\TP_compil_yacc.y"
 yyerror("',' attendue dans la liste."); getch(); exit(1); 
#line 1137 "TP_compil_yacc.c"
			}
		}
		break;
	case 68:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 212 ".\\TP_compil_yacc.y"
 yyerror("liste attendue après ','."); getch(); exit(1); 
#line 1150 "TP_compil_yacc.c"
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
	{ "inf", 264 },
	{ "sup", 265 },
	{ "ega", 266 },
	{ "nombre", 267 },
	{ "nom_fonction", 268 },
	{ "si", 269 },
	{ "or_op", 270 },
	{ "and_op", 271 },
	{ "separateur_liste", 272 },
	{ "separateur_si", 273 },
	{ "fin_ligne", 274 },
	{ "moins_unaire", 275 },
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
	"expr: fonction",
	"expr: instr_si",
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
	"expr: error",
	"instr_si: si parenthese_o cond separateur_si expr separateur_si expr parenthese_f",
	"instr_si: error parenthese_o cond separateur_si expr separateur_si expr parenthese_f",
	"instr_si: si error cond separateur_si expr separateur_si expr parenthese_f",
	"instr_si: si parenthese_o error separateur_si expr separateur_si expr parenthese_f",
	"instr_si: si parenthese_o cond error expr separateur_si expr parenthese_f",
	"instr_si: si parenthese_o cond separateur_si error separateur_si expr parenthese_f",
	"instr_si: si parenthese_o cond separateur_si expr error expr parenthese_f",
	"instr_si: si parenthese_o cond separateur_si expr separateur_si error parenthese_f",
	"instr_si: si parenthese_o cond separateur_si expr separateur_si expr error",
	"cond: expr inf expr",
	"cond: expr sup expr",
	"cond: expr ega expr",
	"cond: or_op parenthese_o liste_cmp parenthese_f",
	"cond: and_op parenthese_o liste_cmp parenthese_f",
	"cond: expr",
	"cond: error inf expr",
	"cond: expr inf error",
	"cond: error sup expr",
	"cond: expr sup error",
	"cond: error ega expr",
	"cond: expr ega error",
	"cond: or_op error liste_cmp parenthese_f",
	"cond: or_op parenthese_o error parenthese_f",
	"cond: or_op parenthese_o liste_cmp error",
	"cond: and_op error liste_cmp parenthese_f",
	"cond: and_op parenthese_o error parenthese_f",
	"cond: and_op parenthese_o liste_cmp error",
	"cond: error parenthese_o liste_cmp parenthese_f",
	"liste_cmp: liste_cmp separateur_liste cond",
	"liste_cmp: cond",
	"liste_cmp: error separateur_liste cond",
	"liste_cmp: liste_cmp error cond",
	"liste_cmp: liste_cmp separateur_liste error",
	"fonction: nom_fonction parenthese_o liste parenthese_f",
	"fonction: error parenthese_o liste parenthese_f",
	"fonction: nom_fonction error liste parenthese_f",
	"fonction: nom_fonction parenthese_o error parenthese_f",
	"fonction: nom_fonction parenthese_o liste error",
	"liste: expr separateur_liste liste",
	"liste: expr",
	"liste: error separateur_liste liste",
	"liste: expr error liste",
	"liste: expr separateur_liste error"
};
#endif

YYCONST yyreduction_t YYNEARFAR YYBASED_CODE YYDCDECL yyreduction[] = {
	{ 0, 1, -1 },
	{ 1, 2, 0 },
	{ 1, 2, 1 },
	{ 1, 2, 2 },
	{ 2, 3, 3 },
	{ 2, 3, 4 },
	{ 2, 3, 5 },
	{ 2, 3, 6 },
	{ 2, 3, 7 },
	{ 2, 2, 8 },
	{ 2, 3, 9 },
	{ 2, 1, -1 },
	{ 2, 1, -1 },
	{ 2, 1, -1 },
	{ 2, 3, 10 },
	{ 2, 3, 11 },
	{ 2, 3, 12 },
	{ 2, 3, 13 },
	{ 2, 3, 14 },
	{ 2, 3, 15 },
	{ 2, 3, 16 },
	{ 2, 3, 17 },
	{ 2, 3, 18 },
	{ 2, 3, 19 },
	{ 2, 3, 20 },
	{ 2, 2, 21 },
	{ 2, 3, 22 },
	{ 2, 3, 23 },
	{ 2, 3, 24 },
	{ 2, 1, 25 },
	{ 3, 8, 26 },
	{ 3, 8, 27 },
	{ 3, 8, 28 },
	{ 3, 8, 29 },
	{ 3, 8, 30 },
	{ 3, 8, 31 },
	{ 3, 8, 32 },
	{ 3, 8, 33 },
	{ 3, 8, 34 },
	{ 4, 3, 35 },
	{ 4, 3, 36 },
	{ 4, 3, 37 },
	{ 4, 4, 38 },
	{ 4, 4, 39 },
	{ 4, 1, 40 },
	{ 4, 3, 41 },
	{ 4, 3, 42 },
	{ 4, 3, 43 },
	{ 4, 3, 44 },
	{ 4, 3, 45 },
	{ 4, 3, 46 },
	{ 4, 4, 47 },
	{ 4, 4, 48 },
	{ 4, 4, 49 },
	{ 4, 4, 50 },
	{ 4, 4, 51 },
	{ 4, 4, 52 },
	{ 4, 4, 53 },
	{ 5, 3, 54 },
	{ 5, 1, 55 },
	{ 5, 3, 56 },
	{ 5, 3, 57 },
	{ 5, 3, 58 },
	{ 6, 4, 59 },
	{ 6, 4, 60 },
	{ 6, 4, 61 },
	{ 6, 4, 62 },
	{ 6, 4, 63 },
	{ 7, 3, 64 },
	{ 7, 1, 65 },
	{ 7, 3, 66 },
	{ 7, 3, 67 },
	{ 7, 3, 68 }
};

int YYNEAR YYDCDECL yytokenaction_size = 503;
YYCONST yytokenaction_t YYNEARFAR YYBASED_CODE YYDCDECL yytokenaction[] = {
	{ 97, YYAT_SHIFT, 11 },
	{ 97, YYAT_SHIFT, 12 },
	{ 97, YYAT_SHIFT, 13 },
	{ 97, YYAT_SHIFT, 14 },
	{ 97, YYAT_SHIFT, 15 },
	{ 97, YYAT_SHIFT, 16 },
	{ 97, YYAT_SHIFT, 72 },
	{ 97, YYAT_SHIFT, 48 },
	{ 97, YYAT_SHIFT, 73 },
	{ 97, YYAT_SHIFT, 74 },
	{ 97, YYAT_SHIFT, 75 },
	{ 97, YYAT_SHIFT, 4 },
	{ 97, YYAT_SHIFT, 5 },
	{ 97, YYAT_SHIFT, 6 },
	{ 127, YYAT_SHIFT, 146 },
	{ 60, YYAT_SHIFT, 95 },
	{ 97, YYAT_SHIFT, 128 },
	{ 40, YYAT_SHIFT, 11 },
	{ 40, YYAT_SHIFT, 12 },
	{ 40, YYAT_SHIFT, 13 },
	{ 40, YYAT_SHIFT, 14 },
	{ 40, YYAT_SHIFT, 15 },
	{ 40, YYAT_SHIFT, 16 },
	{ 40, YYAT_SHIFT, 72 },
	{ 40, YYAT_SHIFT, 48 },
	{ 40, YYAT_SHIFT, 73 },
	{ 40, YYAT_SHIFT, 74 },
	{ 40, YYAT_SHIFT, 75 },
	{ 40, YYAT_SHIFT, 4 },
	{ 40, YYAT_SHIFT, 5 },
	{ 40, YYAT_SHIFT, 6 },
	{ 127, YYAT_SHIFT, 147 },
	{ 60, YYAT_SHIFT, 96 },
	{ 40, YYAT_SHIFT, 76 },
	{ 148, YYAT_SHIFT, 11 },
	{ 148, YYAT_SHIFT, 12 },
	{ 148, YYAT_SHIFT, 13 },
	{ 148, YYAT_SHIFT, 14 },
	{ 148, YYAT_SHIFT, 15 },
	{ 148, YYAT_SHIFT, 16 },
	{ 148, YYAT_SHIFT, 72 },
	{ 157, YYAT_SHIFT, 165 },
	{ 148, YYAT_SHIFT, 73 },
	{ 148, YYAT_SHIFT, 74 },
	{ 148, YYAT_SHIFT, 75 },
	{ 148, YYAT_SHIFT, 4 },
	{ 148, YYAT_SHIFT, 5 },
	{ 148, YYAT_SHIFT, 6 },
	{ 126, YYAT_ERROR, 0 },
	{ 156, YYAT_SHIFT, 164 },
	{ 148, YYAT_SHIFT, 76 },
	{ 104, YYAT_SHIFT, 11 },
	{ 104, YYAT_SHIFT, 12 },
	{ 104, YYAT_SHIFT, 13 },
	{ 104, YYAT_SHIFT, 14 },
	{ 104, YYAT_SHIFT, 15 },
	{ 104, YYAT_SHIFT, 16 },
	{ 104, YYAT_SHIFT, 72 },
	{ 126, YYAT_SHIFT, 145 },
	{ 104, YYAT_SHIFT, 73 },
	{ 104, YYAT_SHIFT, 74 },
	{ 104, YYAT_SHIFT, 75 },
	{ 104, YYAT_SHIFT, 4 },
	{ 104, YYAT_SHIFT, 5 },
	{ 104, YYAT_SHIFT, 6 },
	{ 125, YYAT_ERROR, 0 },
	{ 155, YYAT_SHIFT, 163 },
	{ 104, YYAT_SHIFT, 132 },
	{ 152, YYAT_SHIFT, 11 },
	{ 152, YYAT_SHIFT, 12 },
	{ 152, YYAT_SHIFT, 13 },
	{ 152, YYAT_SHIFT, 14 },
	{ 152, YYAT_SHIFT, 15 },
	{ 152, YYAT_SHIFT, 16 },
	{ 152, YYAT_SHIFT, 72 },
	{ 125, YYAT_SHIFT, 144 },
	{ 152, YYAT_SHIFT, 73 },
	{ 152, YYAT_SHIFT, 74 },
	{ 152, YYAT_SHIFT, 75 },
	{ 152, YYAT_SHIFT, 4 },
	{ 152, YYAT_SHIFT, 5 },
	{ 152, YYAT_SHIFT, 6 },
	{ 56, YYAT_SHIFT, 11 },
	{ 56, YYAT_SHIFT, 12 },
	{ 56, YYAT_SHIFT, 13 },
	{ 56, YYAT_SHIFT, 14 },
	{ 56, YYAT_SHIFT, 15 },
	{ 56, YYAT_SHIFT, 16 },
	{ 56, YYAT_SHIFT, 72 },
	{ 154, YYAT_SHIFT, 162 },
	{ 56, YYAT_SHIFT, 73 },
	{ 56, YYAT_SHIFT, 74 },
	{ 56, YYAT_SHIFT, 75 },
	{ 56, YYAT_SHIFT, 4 },
	{ 56, YYAT_SHIFT, 5 },
	{ 56, YYAT_SHIFT, 6 },
	{ 120, YYAT_SHIFT, 11 },
	{ 120, YYAT_SHIFT, 12 },
	{ 120, YYAT_SHIFT, 13 },
	{ 120, YYAT_SHIFT, 14 },
	{ 120, YYAT_SHIFT, 15 },
	{ 120, YYAT_SHIFT, 16 },
	{ 120, YYAT_SHIFT, 17 },
	{ 7, YYAT_SHIFT, 28 },
	{ 111, YYAT_SHIFT, 139 },
	{ 146, YYAT_SHIFT, 11 },
	{ 131, YYAT_SHIFT, 152 },
	{ 120, YYAT_SHIFT, 4 },
	{ 120, YYAT_SHIFT, 5 },
	{ 120, YYAT_SHIFT, 6 },
	{ 7, YYAT_ERROR, 0 },
	{ 111, YYAT_SHIFT, 140 },
	{ 120, YYAT_SHIFT, 76 },
	{ 51, YYAT_SHIFT, 11 },
	{ 51, YYAT_SHIFT, 12 },
	{ 51, YYAT_SHIFT, 13 },
	{ 51, YYAT_SHIFT, 14 },
	{ 51, YYAT_SHIFT, 15 },
	{ 51, YYAT_SHIFT, 16 },
	{ 51, YYAT_SHIFT, 17 },
	{ 111, YYAT_SHIFT, 131 },
	{ 7, YYAT_SHIFT, 34 },
	{ 42, YYAT_SHIFT, 79 },
	{ 128, YYAT_SHIFT, 148 },
	{ 51, YYAT_SHIFT, 4 },
	{ 51, YYAT_SHIFT, 5 },
	{ 51, YYAT_SHIFT, 6 },
	{ 132, YYAT_SHIFT, 56 },
	{ 42, YYAT_SHIFT, 80 },
	{ 51, YYAT_SHIFT, 76 },
	{ 43, YYAT_SHIFT, 81 },
	{ 43, YYAT_SHIFT, 29 },
	{ 43, YYAT_SHIFT, 30 },
	{ 43, YYAT_SHIFT, 31 },
	{ 43, YYAT_SHIFT, 32 },
	{ 43, YYAT_SHIFT, 33 },
	{ 54, YYAT_SHIFT, 90 },
	{ 43, YYAT_SHIFT, 50 },
	{ 43, YYAT_SHIFT, 82 },
	{ 43, YYAT_SHIFT, 83 },
	{ 43, YYAT_SHIFT, 84 },
	{ 132, YYAT_SHIFT, 41 },
	{ 132, YYAT_SHIFT, 42 },
	{ 124, YYAT_SHIFT, 143 },
	{ 59, YYAT_ERROR, 0 },
	{ 54, YYAT_SHIFT, 76 },
	{ 43, YYAT_SHIFT, 85 },
	{ 149, YYAT_SHIFT, 88 },
	{ 149, YYAT_SHIFT, 29 },
	{ 149, YYAT_SHIFT, 30 },
	{ 149, YYAT_SHIFT, 31 },
	{ 149, YYAT_SHIFT, 32 },
	{ 149, YYAT_SHIFT, 33 },
	{ 59, YYAT_ERROR, 0 },
	{ 59, YYAT_SHIFT, 94 },
	{ 149, YYAT_SHIFT, 82 },
	{ 149, YYAT_SHIFT, 83 },
	{ 149, YYAT_SHIFT, 84 },
	{ 123, YYAT_SHIFT, 142 },
	{ 122, YYAT_SHIFT, 141 },
	{ 1, YYAT_ERROR, 0 },
	{ 107, YYAT_SHIFT, 134 },
	{ 106, YYAT_SHIFT, 133 },
	{ 149, YYAT_SHIFT, 85 },
	{ 118, YYAT_SHIFT, 11 },
	{ 118, YYAT_SHIFT, 12 },
	{ 118, YYAT_SHIFT, 13 },
	{ 118, YYAT_SHIFT, 14 },
	{ 118, YYAT_SHIFT, 15 },
	{ 118, YYAT_SHIFT, 16 },
	{ 118, YYAT_SHIFT, 17 },
	{ 1, YYAT_SHIFT, 18 },
	{ 99, YYAT_SHIFT, 130 },
	{ 98, YYAT_SHIFT, 86 },
	{ 96, YYAT_SHIFT, 126 },
	{ 118, YYAT_SHIFT, 4 },
	{ 118, YYAT_SHIFT, 5 },
	{ 118, YYAT_SHIFT, 6 },
	{ 116, YYAT_SHIFT, 11 },
	{ 116, YYAT_SHIFT, 12 },
	{ 116, YYAT_SHIFT, 13 },
	{ 116, YYAT_SHIFT, 14 },
	{ 116, YYAT_SHIFT, 15 },
	{ 116, YYAT_SHIFT, 16 },
	{ 116, YYAT_SHIFT, 17 },
	{ 88, YYAT_SHIFT, 51 },
	{ 85, YYAT_SHIFT, 120 },
	{ 84, YYAT_SHIFT, 118 },
	{ 83, YYAT_SHIFT, 116 },
	{ 116, YYAT_SHIFT, 4 },
	{ 116, YYAT_SHIFT, 5 },
	{ 116, YYAT_SHIFT, 6 },
	{ 114, YYAT_SHIFT, 11 },
	{ 114, YYAT_SHIFT, 12 },
	{ 114, YYAT_SHIFT, 13 },
	{ 114, YYAT_SHIFT, 14 },
	{ 114, YYAT_SHIFT, 15 },
	{ 114, YYAT_SHIFT, 16 },
	{ 114, YYAT_SHIFT, 17 },
	{ 82, YYAT_SHIFT, 114 },
	{ 80, YYAT_SHIFT, 110 },
	{ 79, YYAT_SHIFT, 104 },
	{ 78, YYAT_SHIFT, 107 },
	{ 114, YYAT_SHIFT, 4 },
	{ 114, YYAT_SHIFT, 5 },
	{ 114, YYAT_SHIFT, 6 },
	{ 70, YYAT_SHIFT, 11 },
	{ 70, YYAT_SHIFT, 12 },
	{ 70, YYAT_SHIFT, 13 },
	{ 70, YYAT_SHIFT, 14 },
	{ 70, YYAT_SHIFT, 15 },
	{ 70, YYAT_SHIFT, 16 },
	{ 70, YYAT_SHIFT, 17 },
	{ 72, YYAT_SHIFT, 97 },
	{ 58, YYAT_SHIFT, 93 },
	{ 53, YYAT_SHIFT, 89 },
	{ 45, YYAT_SHIFT, 87 },
	{ 70, YYAT_SHIFT, 4 },
	{ 70, YYAT_SHIFT, 5 },
	{ 70, YYAT_SHIFT, 6 },
	{ 68, YYAT_SHIFT, 11 },
	{ 68, YYAT_SHIFT, 12 },
	{ 68, YYAT_SHIFT, 13 },
	{ 68, YYAT_SHIFT, 14 },
	{ 68, YYAT_SHIFT, 15 },
	{ 68, YYAT_SHIFT, 16 },
	{ 68, YYAT_SHIFT, 17 },
	{ 44, YYAT_SHIFT, 86 },
	{ 33, YYAT_SHIFT, 70 },
	{ 32, YYAT_SHIFT, 68 },
	{ 31, YYAT_SHIFT, 66 },
	{ 68, YYAT_SHIFT, 4 },
	{ 68, YYAT_SHIFT, 5 },
	{ 68, YYAT_SHIFT, 6 },
	{ 66, YYAT_SHIFT, 11 },
	{ 66, YYAT_SHIFT, 12 },
	{ 66, YYAT_SHIFT, 13 },
	{ 66, YYAT_SHIFT, 14 },
	{ 66, YYAT_SHIFT, 15 },
	{ 66, YYAT_SHIFT, 16 },
	{ 66, YYAT_SHIFT, 17 },
	{ 30, YYAT_SHIFT, 64 },
	{ 29, YYAT_SHIFT, 62 },
	{ 27, YYAT_SHIFT, 59 },
	{ 25, YYAT_SHIFT, 54 },
	{ 66, YYAT_SHIFT, 4 },
	{ 66, YYAT_SHIFT, 5 },
	{ 66, YYAT_SHIFT, 6 },
	{ 64, YYAT_SHIFT, 11 },
	{ 64, YYAT_SHIFT, 12 },
	{ 64, YYAT_SHIFT, 13 },
	{ 64, YYAT_SHIFT, 14 },
	{ 64, YYAT_SHIFT, 15 },
	{ 64, YYAT_SHIFT, 16 },
	{ 64, YYAT_SHIFT, 17 },
	{ 22, YYAT_SHIFT, 48 },
	{ 21, YYAT_SHIFT, 46 },
	{ 19, YYAT_SHIFT, 47 },
	{ 17, YYAT_SHIFT, 40 },
	{ 64, YYAT_SHIFT, 4 },
	{ 64, YYAT_SHIFT, 5 },
	{ 64, YYAT_SHIFT, 6 },
	{ 62, YYAT_SHIFT, 11 },
	{ 62, YYAT_SHIFT, 12 },
	{ 62, YYAT_SHIFT, 13 },
	{ 62, YYAT_SHIFT, 14 },
	{ 62, YYAT_SHIFT, 15 },
	{ 62, YYAT_SHIFT, 16 },
	{ 62, YYAT_SHIFT, 17 },
	{ 13, YYAT_SHIFT, 20 },
	{ 10, YYAT_ACCEPT, 0 },
	{ 3, YYAT_SHIFT, 22 },
	{ 0, YYAT_SHIFT, 1 },
	{ 62, YYAT_SHIFT, 4 },
	{ 62, YYAT_SHIFT, 5 },
	{ 62, YYAT_SHIFT, 6 },
	{ 11, YYAT_SHIFT, 11 },
	{ 11, YYAT_SHIFT, 12 },
	{ 11, YYAT_SHIFT, 13 },
	{ 11, YYAT_SHIFT, 14 },
	{ 11, YYAT_SHIFT, 15 },
	{ 11, YYAT_SHIFT, 16 },
	{ 11, YYAT_SHIFT, 17 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 11, YYAT_SHIFT, 4 },
	{ 11, YYAT_SHIFT, 5 },
	{ 11, YYAT_SHIFT, 6 },
	{ 57, YYAT_SHIFT, 46 },
	{ 57, YYAT_SHIFT, 29 },
	{ 57, YYAT_SHIFT, 30 },
	{ 57, YYAT_SHIFT, 31 },
	{ 57, YYAT_SHIFT, 32 },
	{ 57, YYAT_SHIFT, 33 },
	{ 41, YYAT_SHIFT, 77 },
	{ 158, YYAT_SHIFT, 46 },
	{ 57, YYAT_SHIFT, 82 },
	{ 57, YYAT_SHIFT, 83 },
	{ 57, YYAT_SHIFT, 84 },
	{ 139, YYAT_SHIFT, 56 },
	{ 41, YYAT_SHIFT, 78 },
	{ 139, YYAT_SHIFT, 2 },
	{ 158, YYAT_SHIFT, 166 },
	{ 65, YYAT_SHIFT, 46 },
	{ -1, YYAT_ERROR, 0 },
	{ 139, YYAT_SHIFT, 3 },
	{ 65, YYAT_SHIFT, 31 },
	{ 65, YYAT_SHIFT, 32 },
	{ 65, YYAT_SHIFT, 33 },
	{ 109, YYAT_SHIFT, 129 },
	{ 139, YYAT_SHIFT, 4 },
	{ 139, YYAT_SHIFT, 5 },
	{ 139, YYAT_SHIFT, 6 },
	{ 139, YYAT_SHIFT, 41 },
	{ 139, YYAT_SHIFT, 42 },
	{ 135, YYAT_SHIFT, 56 },
	{ 109, YYAT_SHIFT, 137 },
	{ 135, YYAT_SHIFT, 2 },
	{ 108, YYAT_SHIFT, 135 },
	{ 71, YYAT_SHIFT, 46 },
	{ -1, YYAT_ERROR, 0 },
	{ 135, YYAT_SHIFT, 3 },
	{ -1, YYAT_ERROR, 0 },
	{ 36, YYAT_SHIFT, 46 },
	{ 71, YYAT_SHIFT, 33 },
	{ 108, YYAT_SHIFT, 136 },
	{ 135, YYAT_SHIFT, 4 },
	{ 135, YYAT_SHIFT, 5 },
	{ 135, YYAT_SHIFT, 6 },
	{ 135, YYAT_SHIFT, 41 },
	{ 135, YYAT_SHIFT, 42 },
	{ 36, YYAT_REDUCE, 17 },
	{ 36, YYAT_REDUCE, 17 },
	{ 36, YYAT_REDUCE, 17 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 36, YYAT_REDUCE, 17 },
	{ 36, YYAT_REDUCE, 17 },
	{ 36, YYAT_REDUCE, 17 },
	{ 112, YYAT_SHIFT, 88 },
	{ 112, YYAT_SHIFT, 29 },
	{ 112, YYAT_SHIFT, 30 },
	{ 112, YYAT_SHIFT, 31 },
	{ 112, YYAT_SHIFT, 32 },
	{ 112, YYAT_SHIFT, 33 },
	{ 52, YYAT_SHIFT, 88 },
	{ 52, YYAT_SHIFT, 29 },
	{ 52, YYAT_SHIFT, 30 },
	{ 52, YYAT_SHIFT, 31 },
	{ 52, YYAT_SHIFT, 32 },
	{ 52, YYAT_SHIFT, 33 },
	{ -1, YYAT_ERROR, 0 },
	{ 55, YYAT_SHIFT, 91 },
	{ 63, YYAT_SHIFT, 46 },
	{ 6, YYAT_SHIFT, 26 },
	{ 112, YYAT_SHIFT, 85 },
	{ 63, YYAT_SHIFT, 31 },
	{ 63, YYAT_SHIFT, 32 },
	{ 63, YYAT_SHIFT, 33 },
	{ 55, YYAT_SHIFT, 92 },
	{ 6, YYAT_SHIFT, 27 },
	{ 52, YYAT_SHIFT, 85 },
	{ 161, YYAT_SHIFT, 169 },
	{ 161, YYAT_SHIFT, 29 },
	{ 161, YYAT_SHIFT, 30 },
	{ 161, YYAT_SHIFT, 31 },
	{ 161, YYAT_SHIFT, 32 },
	{ 161, YYAT_SHIFT, 33 },
	{ -1, YYAT_ERROR, 0 },
	{ 161, YYAT_SHIFT, 170 },
	{ 159, YYAT_SHIFT, 46 },
	{ 159, YYAT_SHIFT, 29 },
	{ 159, YYAT_SHIFT, 30 },
	{ 159, YYAT_SHIFT, 31 },
	{ 159, YYAT_SHIFT, 32 },
	{ 159, YYAT_SHIFT, 33 },
	{ 169, YYAT_SHIFT, 11 },
	{ 159, YYAT_SHIFT, 167 },
	{ 169, YYAT_SHIFT, 2 },
	{ 147, YYAT_SHIFT, 160 },
	{ 5, YYAT_SHIFT, 24 },
	{ 147, YYAT_SHIFT, 2 },
	{ 169, YYAT_SHIFT, 3 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 147, YYAT_SHIFT, 3 },
	{ 5, YYAT_SHIFT, 25 },
	{ 169, YYAT_SHIFT, 4 },
	{ 169, YYAT_SHIFT, 5 },
	{ 169, YYAT_SHIFT, 6 },
	{ 147, YYAT_SHIFT, 4 },
	{ 147, YYAT_SHIFT, 5 },
	{ 147, YYAT_SHIFT, 6 },
	{ 81, YYAT_SHIFT, 51 },
	{ 23, YYAT_SHIFT, 49 },
	{ 81, YYAT_SHIFT, 2 },
	{ 49, YYAT_SHIFT, 11 },
	{ -1, YYAT_ERROR, 0 },
	{ 49, YYAT_SHIFT, 2 },
	{ 81, YYAT_SHIFT, 3 },
	{ -1, YYAT_ERROR, 0 },
	{ 23, YYAT_SHIFT, 50 },
	{ 49, YYAT_SHIFT, 3 },
	{ -1, YYAT_ERROR, 0 },
	{ 81, YYAT_SHIFT, 4 },
	{ 81, YYAT_SHIFT, 5 },
	{ 81, YYAT_SHIFT, 6 },
	{ 49, YYAT_SHIFT, 4 },
	{ 49, YYAT_SHIFT, 5 },
	{ 49, YYAT_SHIFT, 6 },
	{ 28, YYAT_SHIFT, 11 },
	{ -1, YYAT_ERROR, 0 },
	{ 28, YYAT_SHIFT, 2 },
	{ -1, YYAT_ERROR, 0 },
	{ 35, YYAT_SHIFT, 46 },
	{ 69, YYAT_SHIFT, 46 },
	{ 28, YYAT_SHIFT, 3 },
	{ 35, YYAT_SHIFT, 31 },
	{ 35, YYAT_SHIFT, 32 },
	{ 35, YYAT_SHIFT, 33 },
	{ 69, YYAT_SHIFT, 33 },
	{ 28, YYAT_SHIFT, 4 },
	{ 28, YYAT_SHIFT, 5 },
	{ 28, YYAT_SHIFT, 6 },
	{ 160, YYAT_SHIFT, 12 },
	{ 160, YYAT_SHIFT, 13 },
	{ 160, YYAT_SHIFT, 14 },
	{ 160, YYAT_SHIFT, 15 },
	{ 160, YYAT_SHIFT, 16 },
	{ 160, YYAT_SHIFT, 17 },
	{ 160, YYAT_SHIFT, 168 },
	{ 110, YYAT_SHIFT, 72 },
	{ 110, YYAT_SHIFT, 138 },
	{ 110, YYAT_SHIFT, 73 },
	{ 110, YYAT_SHIFT, 74 },
	{ 110, YYAT_SHIFT, 75 },
	{ 20, YYAT_SHIFT, 11 },
	{ -1, YYAT_ERROR, 0 },
	{ 67, YYAT_SHIFT, 46 },
	{ 39, YYAT_SHIFT, 46 },
	{ 38, YYAT_SHIFT, 46 },
	{ 110, YYAT_SHIFT, 132 },
	{ 20, YYAT_SHIFT, 17 },
	{ 67, YYAT_SHIFT, 33 },
	{ 39, YYAT_SHIFT, 33 },
	{ 38, YYAT_SHIFT, 33 },
	{ -1, YYAT_ERROR, 0 },
	{ 20, YYAT_SHIFT, 4 },
	{ 20, YYAT_SHIFT, 5 },
	{ 20, YYAT_SHIFT, 6 },
	{ 119, YYAT_SHIFT, 46 },
	{ 119, YYAT_SHIFT, 29 },
	{ 119, YYAT_SHIFT, 30 },
	{ 119, YYAT_SHIFT, 31 },
	{ 119, YYAT_SHIFT, 32 },
	{ 119, YYAT_SHIFT, 33 },
	{ 117, YYAT_SHIFT, 46 },
	{ 117, YYAT_SHIFT, 29 },
	{ 117, YYAT_SHIFT, 30 },
	{ 117, YYAT_SHIFT, 31 },
	{ 117, YYAT_SHIFT, 32 },
	{ 117, YYAT_SHIFT, 33 },
	{ 115, YYAT_SHIFT, 46 },
	{ 115, YYAT_SHIFT, 29 },
	{ 115, YYAT_SHIFT, 30 },
	{ 115, YYAT_SHIFT, 31 },
	{ 115, YYAT_SHIFT, 32 },
	{ 115, YYAT_SHIFT, 33 },
	{ 102, YYAT_SHIFT, 46 },
	{ 102, YYAT_SHIFT, 29 },
	{ 102, YYAT_SHIFT, 30 },
	{ 102, YYAT_SHIFT, 31 },
	{ 102, YYAT_SHIFT, 32 },
	{ 102, YYAT_SHIFT, 33 },
	{ 101, YYAT_SHIFT, 46 },
	{ 101, YYAT_SHIFT, 29 },
	{ 101, YYAT_SHIFT, 30 },
	{ 101, YYAT_SHIFT, 31 },
	{ 101, YYAT_SHIFT, 32 },
	{ 101, YYAT_SHIFT, 33 },
	{ 100, YYAT_SHIFT, 46 },
	{ 100, YYAT_SHIFT, 29 },
	{ 100, YYAT_SHIFT, 30 },
	{ 100, YYAT_SHIFT, 31 },
	{ 100, YYAT_SHIFT, 32 },
	{ 100, YYAT_SHIFT, 33 },
	{ 61, YYAT_SHIFT, 46 },
	{ 61, YYAT_SHIFT, 29 },
	{ 61, YYAT_SHIFT, 30 },
	{ 61, YYAT_SHIFT, 31 },
	{ 61, YYAT_SHIFT, 32 },
	{ 61, YYAT_SHIFT, 33 },
	{ 37, YYAT_SHIFT, 46 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 37, YYAT_SHIFT, 33 }
};

YYCONST yystateaction_t YYNEARFAR YYBASED_CODE YYDCDECL yystateaction[] = {
	{ 16, 1, YYAT_DEFAULT, 147 },
	{ -103, 1, YYAT_DEFAULT, 160 },
	{ 0, 0, YYAT_DEFAULT, 13 },
	{ 15, 1, YYAT_DEFAULT, 147 },
	{ 0, 0, YYAT_REDUCE, 11 },
	{ 129, 1, YYAT_ERROR, 0 },
	{ 103, 1, YYAT_ERROR, 0 },
	{ -153, 1, YYAT_DEFAULT, 161 },
	{ 0, 0, YYAT_REDUCE, 12 },
	{ 0, 0, YYAT_REDUCE, 13 },
	{ 270, 1, YYAT_ERROR, 0 },
	{ 20, 1, YYAT_REDUCE, 29 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 13, 1, YYAT_DEFAULT, 147 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 2, 1, YYAT_DEFAULT, 132 },
	{ 0, 0, YYAT_REDUCE, 2 },
	{ -6, 1, YYAT_DEFAULT, 158 },
	{ 185, 1, YYAT_REDUCE, 25 },
	{ 0, 1, YYAT_REDUCE, 9 },
	{ -8, 1, YYAT_DEFAULT, 160 },
	{ 143, 1, YYAT_DEFAULT, 161 },
	{ 0, 0, YYAT_DEFAULT, 88 },
	{ -12, 1, YYAT_DEFAULT, 147 },
	{ 0, 0, YYAT_DEFAULT, 132 },
	{ -13, 1, YYAT_DEFAULT, 132 },
	{ 159, 1, YYAT_REDUCE, 3 },
	{ -14, 1, YYAT_DEFAULT, 147 },
	{ -15, 1, YYAT_DEFAULT, 147 },
	{ -26, 1, YYAT_DEFAULT, 147 },
	{ -27, 1, YYAT_DEFAULT, 147 },
	{ -28, 1, YYAT_DEFAULT, 147 },
	{ 0, 0, YYAT_REDUCE, 1 },
	{ 163, 1, YYAT_REDUCE, 15 },
	{ 69, 1, YYAT_REDUCE, 9 },
	{ 241, 1, YYAT_REDUCE, 19 },
	{ 189, 1, YYAT_REDUCE, 21 },
	{ 188, 1, YYAT_REDUCE, 23 },
	{ -239, 1, YYAT_REDUCE, 29 },
	{ 40, 1, YYAT_ERROR, 0 },
	{ -134, 1, YYAT_ERROR, 0 },
	{ -126, 1, YYAT_REDUCE, 44 },
	{ -46, 1, YYAT_ERROR, 0 },
	{ -47, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_REDUCE, 26 },
	{ 0, 0, YYAT_REDUCE, 27 },
	{ 145, 1, YYAT_REDUCE, 28 },
	{ 0, 0, YYAT_REDUCE, 10 },
	{ -143, 1, YYAT_REDUCE, 29 },
	{ 94, 1, YYAT_REDUCE, 69 },
	{ -48, 1, YYAT_ERROR, 0 },
	{ -127, 1, YYAT_DEFAULT, 160 },
	{ 101, 1, YYAT_ERROR, 0 },
	{ -174, 1, YYAT_REDUCE, 29 },
	{ 34, 1, YYAT_REDUCE, 44 },
	{ -59, 1, YYAT_ERROR, 0 },
	{ -119, 1, YYAT_DEFAULT, 110 },
	{ -241, 1, YYAT_ERROR, 0 },
	{ 235, 1, YYAT_REDUCE, 24 },
	{ 6, 1, YYAT_REDUCE, 14 },
	{ 102, 1, YYAT_REDUCE, 4 },
	{ -8, 1, YYAT_REDUCE, 16 },
	{ 49, 1, YYAT_REDUCE, 5 },
	{ -22, 1, YYAT_REDUCE, 18 },
	{ 187, 1, YYAT_REDUCE, 6 },
	{ -36, 1, YYAT_REDUCE, 20 },
	{ 164, 1, YYAT_REDUCE, 7 },
	{ -50, 1, YYAT_REDUCE, 22 },
	{ 65, 1, YYAT_REDUCE, 8 },
	{ -43, 1, YYAT_DEFAULT, 132 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 88 },
	{ 0, 0, YYAT_DEFAULT, 79 },
	{ -54, 1, YYAT_DEFAULT, 132 },
	{ -55, 1, YYAT_DEFAULT, 132 },
	{ -56, 1, YYAT_DEFAULT, 132 },
	{ 142, 1, YYAT_REDUCE, 28 },
	{ -57, 1, YYAT_DEFAULT, 147 },
	{ -68, 1, YYAT_DEFAULT, 147 },
	{ -69, 1, YYAT_DEFAULT, 147 },
	{ -70, 1, YYAT_DEFAULT, 147 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_REDUCE, 64 },
	{ -71, 1, YYAT_DEFAULT, 147 },
	{ 0, 0, YYAT_REDUCE, 65 },
	{ 0, 0, YYAT_REDUCE, 66 },
	{ 0, 0, YYAT_REDUCE, 67 },
	{ 0, 0, YYAT_REDUCE, 63 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ -82, 1, YYAT_DEFAULT, 147 },
	{ -256, 1, YYAT_REDUCE, 29 },
	{ -100, 1, YYAT_REDUCE, 59 },
	{ -91, 1, YYAT_DEFAULT, 109 },
	{ 229, 1, YYAT_REDUCE, 45 },
	{ 223, 1, YYAT_REDUCE, 47 },
	{ 217, 1, YYAT_REDUCE, 49 },
	{ 0, 0, YYAT_REDUCE, 70 },
	{ -205, 1, YYAT_REDUCE, 29 },
	{ 0, 0, YYAT_REDUCE, 59 },
	{ -101, 1, YYAT_DEFAULT, 109 },
	{ -102, 1, YYAT_DEFAULT, 110 },
	{ 64, 1, YYAT_DEFAULT, 111 },
	{ 55, 1, YYAT_DEFAULT, 111 },
	{ 174, 1, YYAT_DEFAULT, 160 },
	{ -152, 1, YYAT_ERROR, 0 },
	{ 88, 1, YYAT_REDUCE, 24 },
	{ 0, 0, YYAT_REDUCE, 71 },
	{ -64, 1, YYAT_REDUCE, 29 },
	{ 211, 1, YYAT_REDUCE, 39 },
	{ -78, 1, YYAT_REDUCE, 29 },
	{ 205, 1, YYAT_REDUCE, 40 },
	{ -92, 1, YYAT_REDUCE, 29 },
	{ 199, 1, YYAT_REDUCE, 41 },
	{ -160, 1, YYAT_REDUCE, 29 },
	{ 0, 0, YYAT_REDUCE, 68 },
	{ -114, 1, YYAT_DEFAULT, 125 },
	{ -115, 1, YYAT_DEFAULT, 125 },
	{ -130, 1, YYAT_DEFAULT, 125 },
	{ -198, 1, YYAT_DEFAULT, 158 },
	{ -215, 1, YYAT_DEFAULT, 160 },
	{ -242, 1, YYAT_DEFAULT, 125 },
	{ -133, 1, YYAT_DEFAULT, 132 },
	{ 0, 0, YYAT_DEFAULT, 132 },
	{ 0, 0, YYAT_REDUCE, 57 },
	{ -150, 1, YYAT_DEFAULT, 132 },
	{ -129, 1, YYAT_DEFAULT, 147 },
	{ 0, 0, YYAT_REDUCE, 51 },
	{ 0, 0, YYAT_REDUCE, 52 },
	{ 61, 1, YYAT_REDUCE, 53 },
	{ 0, 0, YYAT_REDUCE, 42 },
	{ 0, 0, YYAT_REDUCE, 54 },
	{ 0, 0, YYAT_REDUCE, 55 },
	{ 45, 1, YYAT_REDUCE, 56 },
	{ 0, 0, YYAT_REDUCE, 43 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ 0, 0, YYAT_DEFAULT, 146 },
	{ -151, 1, YYAT_DEFAULT, 147 },
	{ 128, 1, YYAT_ERROR, 0 },
	{ -222, 1, YYAT_REDUCE, 29 },
	{ -109, 1, YYAT_REDUCE, 44 },
	{ 0, 0, YYAT_REDUCE, 60 },
	{ 0, 0, YYAT_REDUCE, 61 },
	{ -188, 1, YYAT_REDUCE, 29 },
	{ 0, 0, YYAT_REDUCE, 58 },
	{ -174, 1, YYAT_DEFAULT, 158 },
	{ -197, 1, YYAT_DEFAULT, 158 },
	{ -214, 1, YYAT_DEFAULT, 158 },
	{ -222, 1, YYAT_DEFAULT, 158 },
	{ 41, 1, YYAT_DEFAULT, 161 },
	{ 119, 1, YYAT_REDUCE, 24 },
	{ 172, 1, YYAT_DEFAULT, 146 },
	{ 111, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 31 },
	{ 0, 0, YYAT_REDUCE, 32 },
	{ 0, 0, YYAT_REDUCE, 33 },
	{ 0, 0, YYAT_REDUCE, 34 },
	{ 0, 0, YYAT_REDUCE, 35 },
	{ 0, 0, YYAT_REDUCE, 36 },
	{ 0, 0, YYAT_REDUCE, 37 },
	{ 125, 1, YYAT_REDUCE, 38 },
	{ 0, 0, YYAT_REDUCE, 30 }
};

int YYNEAR YYDCDECL yynontermgoto_size = 62;

YYCONST yynontermgoto_t YYNEARFAR YYBASED_CODE YYDCDECL yynontermgoto[] = {
	{ 72, 43 },
	{ 160, 19 },
	{ 72, 98 },
	{ 72, 99 },
	{ 128, 149 },
	{ 72, 45 },
	{ 169, 61 },
	{ 169, 9 },
	{ 88, 112 },
	{ 128, 103 },
	{ 169, 8 },
	{ 85, 52 },
	{ 139, 57 },
	{ 88, 113 },
	{ 139, 151 },
	{ 147, 161 },
	{ 85, 121 },
	{ 80, 105 },
	{ 80, 111 },
	{ 17, 44 },
	{ 17, -1 },
	{ 0, 10 },
	{ 0, 7 },
	{ 146, 159 },
	{ 145, 158 },
	{ 144, 157 },
	{ 143, 156 },
	{ 142, 155 },
	{ 141, 154 },
	{ 132, 150 },
	{ 131, 153 },
	{ 96, 127 },
	{ 95, 125 },
	{ 94, 124 },
	{ 93, 123 },
	{ 86, 122 },
	{ 84, 119 },
	{ 83, 117 },
	{ 82, 115 },
	{ 79, 109 },
	{ 78, 108 },
	{ 77, 106 },
	{ 76, 103 },
	{ 75, 102 },
	{ 74, 101 },
	{ 73, 100 },
	{ 33, 71 },
	{ 32, 69 },
	{ 31, 67 },
	{ 30, 65 },
	{ 29, 63 },
	{ 27, 60 },
	{ 26, 58 },
	{ 25, 55 },
	{ 24, 53 },
	{ 16, 39 },
	{ 15, 38 },
	{ 14, 37 },
	{ 13, 36 },
	{ 12, 35 },
	{ 3, 23 },
	{ 2, 21 }
};

YYCONST yystategoto_t YYNEARFAR YYBASED_CODE YYDCDECL yystategoto[] = {
	{ 20, 169 },
	{ 0, 160 },
	{ 59, 169 },
	{ 58, 169 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 57, 169 },
	{ 56, 169 },
	{ 55, 169 },
	{ 54, 169 },
	{ 53, 169 },
	{ 15, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 47, 85 },
	{ 46, 85 },
	{ 48, 139 },
	{ 47, 139 },
	{ 0, 169 },
	{ 48, 169 },
	{ 47, 169 },
	{ 46, 169 },
	{ 45, 169 },
	{ 44, 169 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 169 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 169 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ -2, 169 },
	{ 43, 169 },
	{ 42, 169 },
	{ 41, 169 },
	{ 35, 85 },
	{ 36, 80 },
	{ 35, 80 },
	{ 34, 80 },
	{ 13, 139 },
	{ 0, 88 },
	{ 36, 169 },
	{ 35, 169 },
	{ 34, 169 },
	{ 9, 169 },
	{ 33, 169 },
	{ 0, -1 },
	{ 6, 169 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 32, 169 },
	{ 31, 169 },
	{ 30, 169 },
	{ 29, 169 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 2, 132 },
	{ 0, 139 },
	{ 0, -1 },
	{ 26, 139 },
	{ 25, 139 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 139 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 10, 169 },
	{ 0, -1 },
	{ 26, 169 },
	{ 25, 169 },
	{ 24, 169 },
	{ 23, 169 },
	{ 22, 169 },
	{ 21, 169 },
	{ 13, 169 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 160 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ -1, 169 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 4, -1 },
	{ 0, -1 }
};

YYCONST yydestructor_t YYNEARFAR *YYNEAR YYDCDECL yydestructorptr = NULL;

YYCONST yytokendest_t YYNEARFAR *YYNEAR YYDCDECL yytokendestptr = NULL;
int YYNEAR YYDCDECL yytokendest_size = 0;

YYCONST yytokendestbase_t YYNEARFAR *YYNEAR YYDCDECL yytokendestbaseptr = NULL;
int YYNEAR YYDCDECL yytokendestbase_size = 0;
#line 214 ".\\TP_compil_yacc.y"


/////////////////////////////////////////////////////////////////////////////
// programs section

int main(void)
{
	return yyparse();
}

double somme(struct node *L){
	double somme = 0;
	while(L != NULL){
		somme += L->data;
		L = L->next;
	}
	return somme;
}

double produit(struct node *L){
	double produit = 1;
	while(L != NULL){
		produit *= L->data;
		L = L->next;
	}
	return produit;
}

double moyenne(struct node *L){
	double somme = 0;
	int cpt = 0;
	while(L != NULL){
		cpt++;
		somme += L->data;
		L = L->next;
	}
	return somme/cpt;
}

double average_powered(struct node *L,int power){
	double somme = 0;
	int cpt = 0;
	while(L != NULL){
		cpt++;
		somme += pow(L->data,power);
		L = L->next;
	}
	return somme/cpt;
}

double variance(struct node *L){
	return average_powered(L,2) - pow(moyenne(L),2);
}

double ecart_type(struct node *L){
	return sqrt(variance(L));
}

double max(struct node *L){
	double max = L->data;
	L = L->next;
	while(L != NULL){
		if(max<(L->data))	max = L->data;
		L = L->next;
	}
	return max;
}

double min(struct node *L){
	double min = L->data;
	L = L->next;
	while(L != NULL){
		if(min>(L->data))	min = L->data;
		L = L->next;
	}
	return min;
}

void insert_node(struct node **Liste,double data){
	struct node *L;
	L = (struct node*)malloc(sizeof(struct node));
	L->data = data;
	L->next = *Liste;
	*Liste = L;
}

int operation_or(struct node_cmp *L){
	while(L!=NULL){
		if(L->value)	return 1;
		else			L=L->next;
	}
	return 0;
}

int operation_and(struct node_cmp *L){
	while(L!=NULL){
		if(!(L->value))	return 0;
		else			L=L->next;
	}
	return 1;
}

void insert_node_cmp(struct node_cmp **Liste,int value){
	struct node_cmp *L;
	L = (struct node_cmp*)malloc(sizeof(struct node_cmp));
	L->value = value;
	L->next = *Liste;
	*Liste = L;
}
