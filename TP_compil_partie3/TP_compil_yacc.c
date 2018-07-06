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
* Date: 02/03/18
* Time: 21:28:24
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
	char* symb;
	struct node *next;
};

char* somme(struct node *L);
char* produit(struct node *L);
char* moyenne(struct node *L);
char* variance(struct node *L);
char* ecart_type(struct node *L);
char* max(struct node *L);
char* min(struct node *L);
char* puissance(char* a, char* b);
void insert_node(struct node **L,char* symb);

int cpttmp=0,line=0;

#line 68 "TP_compil_yacc.c"
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
#line 57 ".\\TP_compil_yacc.y"

			fprintf(yyout,"%4d:\t MOV, %6s,       , result\n", line++, yyattribute(1 - 2).symb);
			printf("Code généré avec succés dans le fichier out.txt.\n");
			getch();
			exit(0);
		
#line 199 "TP_compil_yacc.c"
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
#line 63 ".\\TP_compil_yacc.y"
 yyerror("il n'y a pas d'expression à Ã©valuer.\n"); getch(); exit(1); 
#line 212 "TP_compil_yacc.c"
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
#line 64 ".\\TP_compil_yacc.y"
 yyerror("fin de ligne attendue.\n"); getch(); exit(1); 
#line 225 "TP_compil_yacc.c"
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
#line 66 ".\\TP_compil_yacc.y"

			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, yyattribute(1 - 3).symb, yyattribute(3 - 3).symb, string);
			sprintf(yyval.symb,"tmp%d", cpttmp++);
		
#line 243 "TP_compil_yacc.c"
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
#line 72 ".\\TP_compil_yacc.y"

			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   -, %6s, %6s, %6s\n", line++, yyattribute(1 - 3).symb, yyattribute(3 - 3).symb, string);
			sprintf(yyval.symb,"tmp%d", cpttmp++);
		
#line 261 "TP_compil_yacc.c"
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

			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, yyattribute(1 - 3).symb, yyattribute(3 - 3).symb, string);
			sprintf(yyval.symb,"tmp%d", cpttmp++);
		
#line 279 "TP_compil_yacc.c"
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
#line 84 ".\\TP_compil_yacc.y"

			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   /, %6s, %6s, %6s\n", line++, yyattribute(1 - 3).symb, yyattribute(3 - 3).symb, string);
			sprintf(yyval.symb,"tmp%d", cpttmp++);
		
#line 297 "TP_compil_yacc.c"
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
#line 90 ".\\TP_compil_yacc.y"

			yyval.symb = puissance(yyattribute(1 - 3).symb,yyattribute(3 - 3).symb);
		
#line 312 "TP_compil_yacc.c"
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
#line 93 ".\\TP_compil_yacc.y"

			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   *, %6s,     -1, %6s\n", line++, yyattribute(2 - 2).symb, string);
			yyval.symb = (char*)malloc(sizeof(char));
			sprintf(yyval.symb,"tmp%d", cpttmp++);
		
#line 331 "TP_compil_yacc.c"
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
#line 100 ".\\TP_compil_yacc.y"
 yyval.symb = yyattribute(2 - 3).symb; 
#line 344 "TP_compil_yacc.c"
			}
		}
		break;
	case 10:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 101 ".\\TP_compil_yacc.y"

			yyval.symb = (char*)malloc(sizeof(char)*6);
			sprintf(yyval.symb,"%s",yyattribute(1 - 1).symb);
		
#line 360 "TP_compil_yacc.c"
			}
		}
		break;
	case 11:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 105 ".\\TP_compil_yacc.y"
 yyval.symb = yyattribute(1 - 1).symb; 
#line 373 "TP_compil_yacc.c"
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
#line 106 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '+'.\n"); getch(); exit(1); 
#line 386 "TP_compil_yacc.c"
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
#line 107 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '+'.\n"); getch(); exit(1); 
#line 399 "TP_compil_yacc.c"
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
#line 108 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '-'.\n"); getch(); exit(1); 
#line 412 "TP_compil_yacc.c"
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
#line 109 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '-'.\n"); getch(); exit(1); 
#line 425 "TP_compil_yacc.c"
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
#line 110 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '*'.\n"); getch(); exit(1); 
#line 438 "TP_compil_yacc.c"
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
#line 111 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '*'.\n"); getch(); exit(1); 
#line 451 "TP_compil_yacc.c"
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
#line 112 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '/'.\n"); getch(); exit(1); 
#line 464 "TP_compil_yacc.c"
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
#line 113 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '/'.\n"); getch(); exit(1); 
#line 477 "TP_compil_yacc.c"
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
#line 114 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '^'.\n"); getch(); exit(1); 
#line 490 "TP_compil_yacc.c"
			}
		}
		break;
	case 21:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 115 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant '^'.\n"); getch(); exit(1); 
#line 503 "TP_compil_yacc.c"
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
#line 116 ".\\TP_compil_yacc.y"
 yyerror("opÃ©ration manquante entre deux expressions.\n"); getch(); exit(1); 
#line 516 "TP_compil_yacc.c"
			}
		}
		break;
	case 23:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[3];
			yyinitdebug(yya, 3);
#endif
			{
#line 117 ".\\TP_compil_yacc.y"
 yyerror("expression attendue après '-'.\n"); getch(); exit(1); 
#line 529 "TP_compil_yacc.c"
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
#line 118 ".\\TP_compil_yacc.y"
 yyerror("'(' attendue avant expression.\n"); getch(); exit(1); 
#line 542 "TP_compil_yacc.c"
			}
		}
		break;
	case 25:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 119 ".\\TP_compil_yacc.y"
 yyerror("expression attendue entre '(' et ')'.\n"); getch(); exit(1); 
#line 555 "TP_compil_yacc.c"
			}
		}
		break;
	case 26:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 120 ".\\TP_compil_yacc.y"
 yyerror("')' attendue après expression.\n"); getch(); exit(1); 
#line 568 "TP_compil_yacc.c"
			}
		}
		break;
	case 27:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 121 ".\\TP_compil_yacc.y"
 yyerror("fonction ou nom variable attendus.\n"); getch(); exit(1); 
#line 581 "TP_compil_yacc.c"
			}
		}
		break;
	case 28:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 123 ".\\TP_compil_yacc.y"

			switch(yyattribute(1 - 4).func){
				case 1:
					yyval.symb = somme(yyattribute(3 - 4).list);
					break;
				case 2:
					yyval.symb = produit(yyattribute(3 - 4).list);
					break;
				case 3:
					yyval.symb = moyenne(yyattribute(3 - 4).list);
					break;
				case 4:
					yyval.symb = variance(yyattribute(3 - 4).list);
					break;
				case 5:
					yyval.symb = ecart_type(yyattribute(3 - 4).list);
					break;
				case 6:
					yyval.symb = max(yyattribute(3 - 4).list);
					break;
				case 7:
					yyval.symb = min(yyattribute(3 - 4).list);
					break;
				//TODO default:
			}
		
#line 619 "TP_compil_yacc.c"
			}
		}
		break;
	case 29:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 149 ".\\TP_compil_yacc.y"
 yyerror("nom de fonction erronÃ©."); getch(); exit(1); 
#line 632 "TP_compil_yacc.c"
			}
		}
		break;
	case 30:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 150 ".\\TP_compil_yacc.y"
 yyerror("'(' attendue après nom de fonction"); getch(); exit(1); 
#line 645 "TP_compil_yacc.c"
			}
		}
		break;
	case 31:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 151 ".\\TP_compil_yacc.y"
 yyerror("erreur dans la liste des paramètres."); getch(); exit(1); 
#line 658 "TP_compil_yacc.c"
			}
		}
		break;
	case 32:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[5];
			yyinitdebug(yya, 5);
#endif
			{
#line 152 ".\\TP_compil_yacc.y"
 yyerror("')' attendue à la fin de la liste des paramètres."); getch(); exit(1); 
#line 671 "TP_compil_yacc.c"
			}
		}
		break;
	case 33:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[4];
			yyinitdebug(yya, 4);
#endif
			{
#line 154 ".\\TP_compil_yacc.y"
 insert_node(&yyattribute(3 - 3).list,yyattribute(1 - 3).symb); yyval.list=yyattribute(3 - 3).list; 
#line 684 "TP_compil_yacc.c"
			}
		}
		break;
	case 34:
		{
#ifdef YYDEBUG
			YYSTYPE YYFAR *yya[2];
			yyinitdebug(yya, 2);
#endif
			{
#line 155 ".\\TP_compil_yacc.y"
 yyval.list=NULL; insert_node(&yyval.list,yyattribute(1 - 1).symb); 
#line 697 "TP_compil_yacc.c"
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
#line 156 ".\\TP_compil_yacc.y"
 yyerror("expression attendue avant ','."); getch(); exit(1); 
#line 710 "TP_compil_yacc.c"
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
#line 157 ".\\TP_compil_yacc.y"
 yyerror("',' attendue dans la liste."); getch(); exit(1); 
#line 723 "TP_compil_yacc.c"
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
#line 158 ".\\TP_compil_yacc.y"
 yyerror("liste attendue après ','."); getch(); exit(1); 
#line 736 "TP_compil_yacc.c"
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
	{ "variable", 264 },
	{ "nom_fonction", 265 },
	{ "separateur_liste", 266 },
	{ "fin_ligne", 267 },
	{ "moins_unaire", 268 },
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
	"expr: variable",
	"expr: fonction",
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
	{ 2, 1, 10 },
	{ 2, 1, 11 },
	{ 2, 3, 12 },
	{ 2, 3, 13 },
	{ 2, 3, 14 },
	{ 2, 3, 15 },
	{ 2, 3, 16 },
	{ 2, 3, 17 },
	{ 2, 3, 18 },
	{ 2, 3, 19 },
	{ 2, 3, 20 },
	{ 2, 3, 21 },
	{ 2, 3, 22 },
	{ 2, 2, 23 },
	{ 2, 3, 24 },
	{ 2, 3, 25 },
	{ 2, 3, 26 },
	{ 2, 1, 27 },
	{ 3, 4, 28 },
	{ 3, 4, 29 },
	{ 3, 4, 30 },
	{ 3, 4, 31 },
	{ 3, 4, 32 },
	{ 4, 3, 33 },
	{ 4, 1, 34 },
	{ 4, 3, 35 },
	{ 4, 3, 36 },
	{ 4, 3, 37 }
};

int YYNEAR YYDCDECL yytokenaction_size = 195;
YYCONST yytokenaction_t YYNEARFAR YYBASED_CODE YYDCDECL yytokenaction[] = {
	{ 72, YYAT_SHIFT, 9 },
	{ 72, YYAT_SHIFT, 10 },
	{ 72, YYAT_SHIFT, 11 },
	{ 72, YYAT_SHIFT, 12 },
	{ 72, YYAT_SHIFT, 13 },
	{ 72, YYAT_SHIFT, 14 },
	{ 72, YYAT_SHIFT, 15 },
	{ 62, YYAT_SHIFT, 72 },
	{ 72, YYAT_SHIFT, 4 },
	{ 72, YYAT_SHIFT, 5 },
	{ 72, YYAT_SHIFT, 60 },
	{ 44, YYAT_SHIFT, 9 },
	{ 44, YYAT_SHIFT, 10 },
	{ 44, YYAT_SHIFT, 11 },
	{ 44, YYAT_SHIFT, 12 },
	{ 44, YYAT_SHIFT, 13 },
	{ 44, YYAT_SHIFT, 14 },
	{ 44, YYAT_SHIFT, 15 },
	{ 46, YYAT_SHIFT, 65 },
	{ 44, YYAT_SHIFT, 4 },
	{ 44, YYAT_SHIFT, 5 },
	{ 44, YYAT_SHIFT, 60 },
	{ 58, YYAT_SHIFT, 9 },
	{ 58, YYAT_SHIFT, 10 },
	{ 58, YYAT_SHIFT, 11 },
	{ 58, YYAT_SHIFT, 12 },
	{ 58, YYAT_SHIFT, 13 },
	{ 58, YYAT_SHIFT, 14 },
	{ 58, YYAT_SHIFT, 15 },
	{ 21, YYAT_SHIFT, 42 },
	{ 58, YYAT_SHIFT, 4 },
	{ 58, YYAT_SHIFT, 5 },
	{ 56, YYAT_SHIFT, 9 },
	{ 56, YYAT_SHIFT, 10 },
	{ 56, YYAT_SHIFT, 11 },
	{ 56, YYAT_SHIFT, 12 },
	{ 56, YYAT_SHIFT, 13 },
	{ 56, YYAT_SHIFT, 14 },
	{ 56, YYAT_SHIFT, 15 },
	{ 21, YYAT_ERROR, 0 },
	{ 56, YYAT_SHIFT, 4 },
	{ 56, YYAT_SHIFT, 5 },
	{ 54, YYAT_SHIFT, 9 },
	{ 54, YYAT_SHIFT, 10 },
	{ 54, YYAT_SHIFT, 11 },
	{ 54, YYAT_SHIFT, 12 },
	{ 54, YYAT_SHIFT, 13 },
	{ 54, YYAT_SHIFT, 14 },
	{ 54, YYAT_SHIFT, 15 },
	{ 39, YYAT_SHIFT, 9 },
	{ 54, YYAT_SHIFT, 4 },
	{ 54, YYAT_SHIFT, 5 },
	{ 52, YYAT_SHIFT, 9 },
	{ 52, YYAT_SHIFT, 10 },
	{ 52, YYAT_SHIFT, 11 },
	{ 52, YYAT_SHIFT, 12 },
	{ 52, YYAT_SHIFT, 13 },
	{ 52, YYAT_SHIFT, 14 },
	{ 52, YYAT_SHIFT, 15 },
	{ 38, YYAT_SHIFT, 63 },
	{ 52, YYAT_SHIFT, 4 },
	{ 52, YYAT_SHIFT, 5 },
	{ 50, YYAT_SHIFT, 9 },
	{ 50, YYAT_SHIFT, 10 },
	{ 50, YYAT_SHIFT, 11 },
	{ 50, YYAT_SHIFT, 12 },
	{ 50, YYAT_SHIFT, 13 },
	{ 50, YYAT_SHIFT, 14 },
	{ 50, YYAT_SHIFT, 15 },
	{ 36, YYAT_SHIFT, 41 },
	{ 50, YYAT_SHIFT, 4 },
	{ 50, YYAT_SHIFT, 5 },
	{ 9, YYAT_SHIFT, 9 },
	{ 9, YYAT_SHIFT, 10 },
	{ 9, YYAT_SHIFT, 11 },
	{ 9, YYAT_SHIFT, 12 },
	{ 9, YYAT_SHIFT, 13 },
	{ 9, YYAT_SHIFT, 14 },
	{ 9, YYAT_SHIFT, 15 },
	{ 29, YYAT_SHIFT, 58 },
	{ 9, YYAT_SHIFT, 4 },
	{ 9, YYAT_SHIFT, 5 },
	{ 37, YYAT_SHIFT, 61 },
	{ 37, YYAT_SHIFT, 25 },
	{ 37, YYAT_SHIFT, 26 },
	{ 37, YYAT_SHIFT, 27 },
	{ 37, YYAT_SHIFT, 28 },
	{ 37, YYAT_SHIFT, 29 },
	{ 28, YYAT_SHIFT, 56 },
	{ 37, YYAT_SHIFT, 43 },
	{ 32, YYAT_SHIFT, 39 },
	{ 27, YYAT_SHIFT, 54 },
	{ 37, YYAT_SHIFT, 62 },
	{ 47, YYAT_SHIFT, 10 },
	{ 47, YYAT_SHIFT, 11 },
	{ 47, YYAT_SHIFT, 12 },
	{ 47, YYAT_SHIFT, 13 },
	{ 47, YYAT_SHIFT, 14 },
	{ 47, YYAT_SHIFT, 15 },
	{ 47, YYAT_SHIFT, 66 },
	{ 32, YYAT_REDUCE, 16 },
	{ 32, YYAT_REDUCE, 16 },
	{ 47, YYAT_SHIFT, 60 },
	{ 70, YYAT_SHIFT, 64 },
	{ 70, YYAT_SHIFT, 25 },
	{ 70, YYAT_SHIFT, 26 },
	{ 70, YYAT_SHIFT, 27 },
	{ 70, YYAT_SHIFT, 28 },
	{ 70, YYAT_SHIFT, 29 },
	{ 26, YYAT_SHIFT, 52 },
	{ 25, YYAT_SHIFT, 50 },
	{ 23, YYAT_SHIFT, 47 },
	{ 20, YYAT_ERROR, 0 },
	{ 70, YYAT_SHIFT, 62 },
	{ 45, YYAT_SHIFT, 64 },
	{ 45, YYAT_SHIFT, 25 },
	{ 45, YYAT_SHIFT, 26 },
	{ 45, YYAT_SHIFT, 27 },
	{ 45, YYAT_SHIFT, 28 },
	{ 45, YYAT_SHIFT, 29 },
	{ 19, YYAT_SHIFT, 39 },
	{ 15, YYAT_SHIFT, 36 },
	{ 11, YYAT_SHIFT, 18 },
	{ 8, YYAT_ACCEPT, 0 },
	{ 45, YYAT_SHIFT, 62 },
	{ 49, YYAT_SHIFT, 39 },
	{ 49, YYAT_SHIFT, 25 },
	{ 49, YYAT_SHIFT, 26 },
	{ 49, YYAT_SHIFT, 27 },
	{ 49, YYAT_SHIFT, 28 },
	{ 49, YYAT_SHIFT, 29 },
	{ 64, YYAT_SHIFT, 44 },
	{ 3, YYAT_SHIFT, 20 },
	{ 64, YYAT_SHIFT, 2 },
	{ 0, YYAT_SHIFT, 1 },
	{ -1, YYAT_ERROR, 0 },
	{ 61, YYAT_SHIFT, 44 },
	{ 64, YYAT_SHIFT, 3 },
	{ 61, YYAT_SHIFT, 2 },
	{ 64, YYAT_SHIFT, 4 },
	{ 64, YYAT_SHIFT, 5 },
	{ 42, YYAT_SHIFT, 9 },
	{ 61, YYAT_SHIFT, 3 },
	{ 42, YYAT_SHIFT, 2 },
	{ 61, YYAT_SHIFT, 4 },
	{ 61, YYAT_SHIFT, 5 },
	{ 24, YYAT_SHIFT, 9 },
	{ 42, YYAT_SHIFT, 3 },
	{ 24, YYAT_SHIFT, 2 },
	{ 42, YYAT_SHIFT, 4 },
	{ 42, YYAT_SHIFT, 5 },
	{ 18, YYAT_SHIFT, 9 },
	{ 24, YYAT_SHIFT, 3 },
	{ 59, YYAT_SHIFT, 39 },
	{ 24, YYAT_SHIFT, 4 },
	{ 24, YYAT_SHIFT, 5 },
	{ 6, YYAT_SHIFT, 24 },
	{ 18, YYAT_SHIFT, 15 },
	{ 59, YYAT_SHIFT, 29 },
	{ 18, YYAT_SHIFT, 4 },
	{ 18, YYAT_SHIFT, 5 },
	{ 53, YYAT_SHIFT, 39 },
	{ 48, YYAT_SHIFT, 67 },
	{ 6, YYAT_ERROR, 0 },
	{ 53, YYAT_SHIFT, 27 },
	{ 53, YYAT_SHIFT, 28 },
	{ 53, YYAT_SHIFT, 29 },
	{ 6, YYAT_SHIFT, 30 },
	{ 51, YYAT_SHIFT, 39 },
	{ 48, YYAT_SHIFT, 68 },
	{ 5, YYAT_SHIFT, 22 },
	{ 51, YYAT_SHIFT, 27 },
	{ 51, YYAT_SHIFT, 28 },
	{ 51, YYAT_SHIFT, 29 },
	{ 31, YYAT_SHIFT, 39 },
	{ 17, YYAT_SHIFT, 39 },
	{ 5, YYAT_SHIFT, 23 },
	{ 31, YYAT_SHIFT, 27 },
	{ 31, YYAT_SHIFT, 28 },
	{ 31, YYAT_SHIFT, 29 },
	{ 57, YYAT_SHIFT, 39 },
	{ 55, YYAT_SHIFT, 39 },
	{ 17, YYAT_SHIFT, 40 },
	{ 35, YYAT_SHIFT, 39 },
	{ 34, YYAT_SHIFT, 39 },
	{ 57, YYAT_SHIFT, 29 },
	{ 55, YYAT_SHIFT, 29 },
	{ 33, YYAT_SHIFT, 39 },
	{ 35, YYAT_SHIFT, 29 },
	{ 34, YYAT_SHIFT, 29 },
	{ 1, YYAT_ERROR, 0 },
	{ -1, YYAT_ERROR, 0 },
	{ 33, YYAT_SHIFT, 29 },
	{ -1, YYAT_ERROR, 0 },
	{ 1, YYAT_SHIFT, 16 }
};

YYCONST yystateaction_t YYNEARFAR YYBASED_CODE YYDCDECL yystateaction[] = {
	{ -122, 1, YYAT_DEFAULT, 64 },
	{ -73, 1, YYAT_DEFAULT, 20 },
	{ 0, 0, YYAT_DEFAULT, 11 },
	{ -124, 1, YYAT_DEFAULT, 64 },
	{ 0, 0, YYAT_REDUCE, 11 },
	{ -86, 1, YYAT_ERROR, 0 },
	{ -100, 1, YYAT_DEFAULT, 21 },
	{ 0, 0, YYAT_REDUCE, 12 },
	{ 123, 1, YYAT_ERROR, 0 },
	{ -184, 1, YYAT_REDUCE, 28 },
	{ 0, 0, YYAT_DEFAULT, 39 },
	{ -134, 1, YYAT_DEFAULT, 64 },
	{ 0, 0, YYAT_DEFAULT, 39 },
	{ 0, 0, YYAT_DEFAULT, 39 },
	{ 0, 0, YYAT_DEFAULT, 39 },
	{ -135, 1, YYAT_DEFAULT, 64 },
	{ 0, 0, YYAT_REDUCE, 2 },
	{ -81, 1, YYAT_DEFAULT, 21 },
	{ -105, 1, YYAT_REDUCE, 24 },
	{ -136, 1, YYAT_REDUCE, 9 },
	{ -154, 1, YYAT_DEFAULT, 36 },
	{ -227, 1, YYAT_DEFAULT, 37 },
	{ 0, 0, YYAT_DEFAULT, 64 },
	{ -145, 1, YYAT_DEFAULT, 64 },
	{ -110, 1, YYAT_REDUCE, 3 },
	{ -146, 1, YYAT_DEFAULT, 64 },
	{ -147, 1, YYAT_DEFAULT, 64 },
	{ -165, 1, YYAT_DEFAULT, 64 },
	{ -168, 1, YYAT_DEFAULT, 64 },
	{ -177, 1, YYAT_DEFAULT, 64 },
	{ 0, 0, YYAT_REDUCE, 1 },
	{ -82, 1, YYAT_REDUCE, 14 },
	{ -166, 1, YYAT_REDUCE, 9 },
	{ -69, 1, YYAT_REDUCE, 18 },
	{ -72, 1, YYAT_REDUCE, 20 },
	{ -73, 1, YYAT_REDUCE, 22 },
	{ -194, 1, YYAT_DEFAULT, 47 },
	{ -174, 1, YYAT_ERROR, 0 },
	{ -204, 1, YYAT_ERROR, 0 },
	{ -207, 1, YYAT_DEFAULT, 64 },
	{ 0, 0, YYAT_REDUCE, 25 },
	{ 0, 0, YYAT_REDUCE, 26 },
	{ -115, 1, YYAT_REDUCE, 27 },
	{ 0, 0, YYAT_REDUCE, 10 },
	{ -245, 1, YYAT_REDUCE, 28 },
	{ -142, 1, YYAT_REDUCE, 35 },
	{ -245, 1, YYAT_ERROR, 0 },
	{ -164, 1, YYAT_DEFAULT, 39 },
	{ -94, 1, YYAT_ERROR, 0 },
	{ -131, 1, YYAT_REDUCE, 23 },
	{ -194, 1, YYAT_REDUCE, 13 },
	{ -88, 1, YYAT_REDUCE, 4 },
	{ -204, 1, YYAT_REDUCE, 15 },
	{ -95, 1, YYAT_REDUCE, 5 },
	{ -214, 1, YYAT_REDUCE, 17 },
	{ -75, 1, YYAT_REDUCE, 6 },
	{ -224, 1, YYAT_REDUCE, 19 },
	{ -76, 1, YYAT_REDUCE, 7 },
	{ -234, 1, YYAT_REDUCE, 21 },
	{ -103, 1, YYAT_REDUCE, 8 },
	{ 0, 0, YYAT_DEFAULT, 64 },
	{ -120, 1, YYAT_REDUCE, 27 },
	{ -249, 1, YYAT_DEFAULT, 64 },
	{ 0, 0, YYAT_REDUCE, 30 },
	{ -125, 1, YYAT_ERROR, 0 },
	{ 0, 0, YYAT_REDUCE, 31 },
	{ 0, 0, YYAT_REDUCE, 32 },
	{ 0, 0, YYAT_REDUCE, 33 },
	{ 0, 0, YYAT_REDUCE, 29 },
	{ 0, 0, YYAT_REDUCE, 36 },
	{ -153, 1, YYAT_REDUCE, 23 },
	{ 0, 0, YYAT_REDUCE, 37 },
	{ -256, 1, YYAT_REDUCE, 28 },
	{ 0, 0, YYAT_REDUCE, 34 }
};

int YYNEAR YYDCDECL yynontermgoto_size = 26;

YYCONST yynontermgoto_t YYNEARFAR YYBASED_CODE YYDCDECL yynontermgoto[] = {
	{ 64, 70 },
	{ 62, 45 },
	{ 64, 71 },
	{ 62, 73 },
	{ 15, 37 },
	{ 60, 69 },
	{ 15, 38 },
	{ 72, 17 },
	{ 72, 7 },
	{ 0, 8 },
	{ 0, 6 },
	{ 42, 49 },
	{ 29, 59 },
	{ 28, 57 },
	{ 27, 55 },
	{ 26, 53 },
	{ 25, 51 },
	{ 23, 48 },
	{ 22, 46 },
	{ 14, 35 },
	{ 13, 34 },
	{ 12, 33 },
	{ 11, 32 },
	{ 10, 31 },
	{ 3, 21 },
	{ 2, 19 }
};

YYCONST yystategoto_t YYNEARFAR YYBASED_CODE YYDCDECL yystategoto[] = {
	{ 8, 72 },
	{ 0, 72 },
	{ 23, 72 },
	{ 22, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 72 },
	{ 21, 72 },
	{ 20, 72 },
	{ 19, 72 },
	{ 18, 72 },
	{ 17, 72 },
	{ 2, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 14, 62 },
	{ 13, 62 },
	{ 0, 42 },
	{ 14, 72 },
	{ 13, 72 },
	{ 12, 72 },
	{ 11, 72 },
	{ 10, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 42 },
	{ 0, -1 },
	{ 0, -1 },
	{ 9, 72 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 0, 72 },
	{ 0, -1 },
	{ 1, 62 },
	{ 0, 64 },
	{ -1, 72 },
	{ 0, -1 },
	{ -2, 72 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 0, -1 },
	{ 5, -1 },
	{ 0, -1 }
};

YYCONST yydestructor_t YYNEARFAR *YYNEAR YYDCDECL yydestructorptr = NULL;

YYCONST yytokendest_t YYNEARFAR *YYNEAR YYDCDECL yytokendestptr = NULL;
int YYNEAR YYDCDECL yytokendest_size = 0;

YYCONST yytokendestbase_t YYNEARFAR *YYNEAR YYDCDECL yytokendestbaseptr = NULL;
int YYNEAR YYDCDECL yytokendestbase_size = 0;
#line 160 ".\\TP_compil_yacc.y"


/////////////////////////////////////////////////////////////////////////////
// programs section

int main(void)
{
	char* outFile = "..\\..\\out.txt";
	yyout = fopen(outFile, "w");
	if(yyout == NULL){
		printf("Erreur lors de l'ouverture du fichier : %s\n",outFile);
		getch();
		exit(1);
	}
	fprintf(yyout,"====================== Code intermÃ©diaire ======================\n");

	yyparse();
	
	fclose(yyout);
	return 0;
}

char* somme(struct node *L){
	if(L != NULL){
		char* result = (char*)malloc(sizeof(char)*6);
		result = L->symb;
		L = L->next;
		if(L != NULL){
			char* cpttmp_str = (char*)malloc(sizeof(char)*6);
			sprintf(cpttmp_str,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, result, L->symb, cpttmp_str);
			sprintf(result,"tmp%d", cpttmp);
			L = L->next;
			while(L != NULL){
				fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, result, L->symb, result);
				L = L->next;
			}
			cpttmp++;
		}
		return result;	
	}
	else	return "liste vide";
}

char* produit(struct node *L){
	if(L != NULL){
		char* result = (char*)malloc(sizeof(char)*6);
		result = L->symb;
		L = L->next;
		if(L != NULL){
			char* cpttmp_str = (char*)malloc(sizeof(char)*6);
			sprintf(cpttmp_str,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, result, L->symb, cpttmp_str);
			sprintf(result,"tmp%d", cpttmp);
			L = L->next;
			while(L != NULL){
				fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, result, L->symb, result);
				L = L->next;
			}
			cpttmp++;
		}
		return result;	
	}
	else	return "liste vide";
}

char* moyenne(struct node *L){
	if(L != NULL){
		char* result = (char*)malloc(sizeof(char)*6);
		result = L->symb;
		L = L->next;
		if(L != NULL){
			int cpt = 2;
			char* cpttmp_str = (char*)malloc(sizeof(char)*6);
			sprintf(cpttmp_str,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, result, L->symb, cpttmp_str);
			sprintf(result,"tmp%d", cpttmp);
			L = L->next;
			while(L != NULL){
				cpt++;
				fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, result, L->symb, result);
				L = L->next;
			}
			fprintf(yyout,"%4d:\t   /, %6s, %6d, %6s\n", line++, result, cpt, result);
			cpttmp++;
		}
		return result;
	}
	else	return "liste vide";
}

char* variance(struct node *L){
	if(L != NULL){
		char* result = (char*)malloc(sizeof(char)*6);
		char* cpttmp_str = (char*)malloc(sizeof(char)*6);
		sprintf(cpttmp_str,"tmp%d", cpttmp);
		fprintf(yyout,"%4d:\t MOV,      0,       , %6s\n", line++, cpttmp_str);
		sprintf(result,"tmp%d", cpttmp++);
		if(L->next != NULL){
			struct node *copy = L;
			int cpt = 2;
			sprintf(cpttmp_str,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, L->symb, L->symb, cpttmp_str);
			fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, result, cpttmp_str, result);
			L = L->next;
			fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, L->symb, L->symb, cpttmp_str);
			fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, result, cpttmp_str, result);
			L = L->next;
			while(L != NULL){
				cpt++;
				fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, L->symb, L->symb, cpttmp_str);
				fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, result, cpttmp_str, result);
				L = L->next;
			}
			fprintf(yyout,"%4d:\t   /, %6s, %6d, %6s\n", line++, result, cpt, result);
			
			char* average = moyenne(copy);
			cpttmp--;
			fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, average, average, average);
			fprintf(yyout,"%4d:\t   -, %6s, %6s, %6s\n", line++, result, average, result);
		}
		return result;
	}
	else	return "liste vide";
}

char* ecart_type(struct node *L){
	if(L != NULL){
		char* result = (char*)malloc(sizeof(char)*6);
		char* var = variance(L);
		char* cpttmp_str = (char*)malloc(sizeof(char)*6);
		sprintf(cpttmp_str,"tmp%d", cpttmp);
		fprintf(yyout,"%4d:\t MOV,     10,       , %6s\n", line++, cpttmp_str);
		sprintf(result,"tmp%d", cpttmp++);
		sprintf(cpttmp_str,"tmp%d", cpttmp);
		fprintf(yyout,"%4d:\t MOV,      5,       , %6s\n", line++, cpttmp_str);
		cpttmp++;
		
		sprintf(cpttmp_str,"tmp%d", cpttmp);
		fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, result, result, cpttmp_str);
		fprintf(yyout,"%4d:\t   -, %6s, %6s, %6s\n", line++, cpttmp_str, var, cpttmp_str);
		fprintf(yyout,"%4d:\t   /, %6s,      2, %6s\n", line++, cpttmp_str, cpttmp_str);
		fprintf(yyout,"%4d:\t   /, %6s, %6s, %6s\n", line++, cpttmp_str, result, cpttmp_str);
		fprintf(yyout,"%4d:\t   -, %6s, %6s, %6s\n", line++, result, cpttmp_str, result);
		sprintf(cpttmp_str,"tmp%d", cpttmp-1);
		fprintf(yyout,"%4d:\t   -, %6s,      1, %6s\n", line++, cpttmp_str, cpttmp_str);
		fprintf(yyout,"%4d:\t  JG, %6s,      0, %6d\n", line++, cpttmp_str, line-7);
		fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, result, var);

		cpttmp-=2;
		return var;	
	}
	else	return "liste vide";
}

char* max(struct node *L){
	if(L != NULL){
		char* result = (char*)malloc(sizeof(char)*6);
		result = L->symb;
		if(L->next != NULL){
			char* cpttmp_str = (char*)malloc(sizeof(char)*6);
			sprintf(cpttmp_str,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, L->symb, cpttmp_str);
			sprintf(result,"tmp%d", cpttmp);
			L = L->next;
			fprintf(yyout,"%4d:\t JGE, %6s, %6s, %6d\n", line++, result, L->symb, line+1);
			fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, L->symb, result);
			L = L->next;
			while(L != NULL){
				fprintf(yyout,"%4d:\t JGE, %6s, %6s, %6d\n", line++, result, L->symb, line+1);
				fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, L->symb, result);
				L = L->next;
			}
			cpttmp++;
		}
		return result;	
	}
	else	return "liste vide";
}

char* min(struct node *L){
	if(L != NULL){
		char* result = (char*)malloc(sizeof(char)*6);
		result = L->symb;
		if(L->next != NULL){
			char* cpttmp_str = (char*)malloc(sizeof(char)*6);
			sprintf(cpttmp_str,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, L->symb, cpttmp_str);
			sprintf(result,"tmp%d", cpttmp);
			L = L->next;
			fprintf(yyout,"%4d:\t JLE, %6s, %6s, %6d\n", line++, result, L->symb, line+1);
			fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, L->symb, result);
			L = L->next;
			while(L != NULL){
				fprintf(yyout,"%4d:\t JLE, %6s, %6s, %6d\n", line++, result, L->symb, line+1);
				fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, L->symb, result);
				L = L->next;
			}
			cpttmp++;
		}
		return result;	
	}
	else	return "liste vide";
}

char* puissance(char* a, char* b){
	char* result = (char*)malloc(sizeof(char)*6);
	sprintf(result,"tmp%d", cpttmp++);
	char* cpttmp_str = (char*)malloc(sizeof(char)*6);
	sprintf(cpttmp_str,"tmp%d", cpttmp);
	fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, a, result);
	fprintf(yyout,"%4d:\t MOV, %6s,       , %6s\n", line++, b, cpttmp_str);
	
	fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, result, a, result);
	fprintf(yyout,"%4d:\t   -, %6s,      1, %6s\n", line++, cpttmp_str, cpttmp_str);
	fprintf(yyout,"%4d:\t  JG, %6s,      0, %6d\n", line++, cpttmp_str, line-3);
		
	return result;
}

void insert_node(struct node **Liste,char* symb){
	struct node *L;
	L = (struct node*)malloc(sizeof(struct node));
	L->symb = symb;
	L->next = *Liste;
	*Liste = L;
}
