%{
/****************************************************************************
TP_compil_yacc.y
ParserWizard generated YACC file.

Date: mardi 9 janvier 2018
****************************************************************************/

#include "TP_compil_lex.h"
#include <math.h>

%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

%token plus moins prod div puis parenthese_o parenthese_f
%token nombre
%token fin_ligne

%%

/////////////////////////////////////////////////////////////////////////////
// rules section
ligne : expr fin_ligne {
			printf("Expression syntaxiquement correcte.\n");
			getch();
			exit(0);
		}
		| error fin_ligne { yyerror("il n'y a pas d'expression à analyser.\n"); getch(); exit(1); }
		| expr error { yyerror("fin de ligne attendue.\n"); getch(); exit(1); }
		;
expr : expr plus expr
		| expr moins expr
		| expr prod expr
		| expr div expr
		| expr puis expr
		| moins expr
		| parenthese_o expr parenthese_f
		| nombre
		| expr plus error { yyerror("expression attendue après '+'.\n"); getch(); exit(1); }
		| error plus expr { yyerror("expression attendue avant '+'.\n"); getch(); exit(1); }
		| expr moins error { yyerror("expression attendue après '-'.\n"); getch(); exit(1); }
		| error moins expr { yyerror("expression attendue avant '-'.\n"); getch(); exit(1); }
		| expr prod error { yyerror("expression attendue après '*'.\n"); getch(); exit(1); }
		| error prod expr { yyerror("expression attendue avant '*'.\n"); getch(); exit(1); }
		| expr div error { yyerror("expression attendue après '/'.\n"); getch(); exit(1); }
		| error div expr { yyerror("expression attendue avant '/'.\n"); getch(); exit(1); }
		| expr puis error { yyerror("expression attendue après '^'.\n"); getch(); exit(1); }
		| error puis expr { yyerror("expression attendue avant '^'.\n"); getch(); exit(1); }
		| expr error expr { yyerror("opération manquante entre deux expressions.\n"); getch(); exit(1); }
		| moins error { yyerror("expression attendue après '-'.\n"); getch(); exit(1); }
		| error expr parenthese_f { yyerror("'(' attendue avant expression.\n"); getch(); exit(1); }
		| parenthese_o error parenthese_f { yyerror("expression attendue entre '(' et ')'.\n"); getch(); exit(1); }
		| parenthese_o expr error { yyerror("')' attendue après expression.\n"); getch(); exit(1); }
		| error { yyerror("un nombre attendu.\n"); getch(); exit(1); }
		;
%%

/////////////////////////////////////////////////////////////////////////////
// programs section

int main(void)
{
	return yyparse();
}