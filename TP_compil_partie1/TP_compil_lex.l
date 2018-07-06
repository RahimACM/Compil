%{
/****************************************************************************
TP_compil_lex.l
ParserWizard generated Lex file.

Date: mardi 9 janvier 2018
****************************************************************************/

#include "TP_compil_yacc.h"
#include <math.h>

int pos=1;
%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

chiffre [0-9]

%%

/////////////////////////////////////////////////////////////////////////////
// rules section

"+"		{ pos++; return plus; }
"-"		{ pos++; return moins; }
"*"		{ pos++; return prod; }
"/"		{ pos++; return div; }
"^"		{ pos++; return puis; }
"("		{ pos++; return parenthese_o; }
")"		{ pos++; return parenthese_f; }

{chiffre}+(\.{chiffre}+)? { pos +=yyleng; return nombre; }

\n		{ pos +=yyleng; return fin_ligne; }
[ \t]	pos +=yyleng;

.		{ printf("Erreur lexicale : entité lexicale non reconnue (%c) à la position %d.\n",yytext[0],pos); getch(); exit(1); }
%%

/////////////////////////////////////////////////////////////////////////////
// programs section