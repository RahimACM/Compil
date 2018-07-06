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

"somme"|"Somme"|"SOMME"					{ pos +=yyleng; yylval.func = 1; return nom_fonction;}
"produit"|"Produit"|"PRODUIT"			{ pos +=yyleng; yylval.func = 2; return nom_fonction;}
"moyenne"|"Moyenne"|"MOYENNE"			{ pos +=yyleng; yylval.func = 3; return nom_fonction;}
"variance"|"Variance"|"VARIANCE"		{ pos +=yyleng; yylval.func = 4; return nom_fonction;}
"ecart-type"|"Ecart-type"|"ECART-TYPE"	{ pos +=yyleng; yylval.func = 5; return nom_fonction;}
"max"|"Max"|"MAX"						{ pos +=yyleng; yylval.func = 6; return nom_fonction;}
"min"|"Min"|"MIN"						{ pos +=yyleng; yylval.func = 7; return nom_fonction;}

[a-zA-Z]([a-zA-Z0-9]|"_")*	{ pos+=yyleng; yylval.symb = yytext; return variable; }

","		{ pos++; return separateur_liste; }

\n		{ pos +=yyleng; return fin_ligne; }
[ \t]	pos +=yyleng;

.		{ printf("Erreur lexicale : entité lexicale non reconnue (%c) à la position %d.\n",yytext[0],pos); getch(); exit(1); }
%%

/////////////////////////////////////////////////////////////////////////////
// programs section