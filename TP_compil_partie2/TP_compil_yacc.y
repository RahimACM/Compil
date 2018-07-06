%{
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
%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

%union{
	double data;
	int booleen;
	int func;
	struct node *list;
	struct node_cmp *list_cmp;
}

%token plus moins prod div puis parenthese_o parenthese_f
%token inf,sup,ega
%token <data> nombre
%token <func> nom_fonction
%token si or_op and_op
%token separateur_liste separateur_si
%token fin_ligne

%type <data> expr fonction instr_si
%type <booleen> cond
%type <list> liste
%type <list_cmp> liste_cmp

%left plus,moins
%left prod,div
%right puis
%nonassoc moins_unaire

%%

/////////////////////////////////////////////////////////////////////////////
// rules section
ligne : expr fin_ligne {
			printf("Evaluation effectuée avec succés.\nLe résultat est : %f\n", $1);
			getch();
			exit(0);
		}
		| error fin_ligne { yyerror("il n'y a pas d'expression à évaluer.\n"); getch(); exit(1); }
		| expr error { yyerror("fin de ligne attendue.\n"); getch(); exit(1); }
		;
expr : expr plus expr { $$ = $1 + $3; }
		| expr moins expr { $$ = $1 - $3; }
		| expr prod expr { $$ = $1 * $3; }
		| expr div expr {	if($3!=0)
								$$ = $1 / $3;
							else {
								yyerror("erreur : division par zéro.");
								getch();
								exit(1);
							}
		}
		| expr puis expr { $$ = pow($1,$3); }
		| moins expr %prec moins_unaire { $$ = -$2; }
		| parenthese_o expr parenthese_f { $$ = $2; }
		| nombre
		| fonction
		| instr_si
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
		| moins error %prec moins_unaire { yyerror("expression attendue après '-'.\n"); getch(); exit(1); }
		| error expr parenthese_f { yyerror("'(' attendue avant expression.\n"); getch(); exit(1); }
		| parenthese_o error parenthese_f { yyerror("expression attendue entre '(' et ')'.\n"); getch(); exit(1); }
		| parenthese_o expr error { yyerror("')' attendue après expression.\n"); getch(); exit(1); }
		| error { yyerror("fonction, instruction_si ou un nombre attendus.\n"); getch(); exit(1); }
		;
instr_si : si parenthese_o cond separateur_si expr separateur_si expr parenthese_f {
			if($3)	$$=$5;
			else	$$=$7;
		}
		| error parenthese_o cond separateur_si expr separateur_si expr parenthese_f {
			yyerror("'si' manque dans l'instruction si"); getch(); exit(1);
		}
		| si error cond separateur_si expr separateur_si expr parenthese_f {
			yyerror("'(' manque dans l'instruction si"); getch(); exit(1);
		}
		| si parenthese_o error separateur_si expr separateur_si expr parenthese_f {
			yyerror("la condition manque dans l'instruction si"); getch(); exit(1);
		}
		| si parenthese_o cond error expr separateur_si expr parenthese_f {
			yyerror("';' manque dans l'instruction si"); getch(); exit(1);
		}
		| si parenthese_o cond separateur_si error separateur_si expr parenthese_f {
			yyerror("expression 1 manque dans l'instruction si"); getch(); exit(1);
		}
		| si parenthese_o cond separateur_si expr error expr parenthese_f {
			yyerror("';' manque dans l'instruction si"); getch(); exit(1);
		}
		| si parenthese_o cond separateur_si expr separateur_si error parenthese_f {
			yyerror("expression 2 manque dans l'instruction si"); getch(); exit(1);
		}
		| si parenthese_o cond separateur_si expr separateur_si expr error {
			yyerror("')' manque dans l'instruction si"); getch(); exit(1);
		}
		;
cond : expr inf expr {
			if($1<$3)	$$=1;
			else		$$=0;
		}
		| expr sup expr {
			if($1>$3)	$$=1;
			else		$$=0;
		}
		| expr ega expr {
			if($1==$3)	$$=1;
			else		$$=0;
		}
		| or_op parenthese_o liste_cmp parenthese_f { $$=operation_or($3); }
		| and_op parenthese_o liste_cmp parenthese_f { $$=operation_and($3); }
		| expr {
			if($1==0)	$$=0;
			else		$$=1;
		}
		| error inf expr { yyerror("expression attendue avant '<'"); getch(); exit(1); }
		| expr inf error { yyerror("expression attendue après '<'"); getch(); exit(1); }
		| error sup expr { yyerror("expression attendue avant '>'"); getch(); exit(1); }
		| expr sup error { yyerror("expression attendue après '>'"); getch(); exit(1); }
		| error ega expr { yyerror("expression attendue avant '='"); getch(); exit(1); }
		| expr ega error { yyerror("expression attendue après '='"); getch(); exit(1); }
		| or_op error liste_cmp parenthese_f { yyerror("'(' manque au début l'instruction or"); getch(); exit(1); }
		| or_op parenthese_o error parenthese_f { yyerror("erreur dans la liste des conditions dans l'instruction or"); getch(); exit(1); }
		| or_op parenthese_o liste_cmp error { yyerror("'(' manque à la fin de l'instruction or"); getch(); exit(1); }
		| and_op error liste_cmp parenthese_f { yyerror("'(' manque au début l'instruction and"); getch(); exit(1); }
		| and_op parenthese_o error parenthese_f { yyerror("erreur dans la liste des conditions dans l'instruction and"); getch(); exit(1); }
		| and_op parenthese_o liste_cmp error { yyerror("'(' manque à la fin de l'instruction and"); getch(); exit(1); }
		| error parenthese_o liste_cmp parenthese_f { yyerror("instruction or ou and attendus"); getch(); exit(1); }
		;
liste_cmp : liste_cmp separateur_liste cond { insert_node_cmp(&$1,$3); $$=$1; }
		| cond { insert_node_cmp(&$$,$1); }
		| error separateur_liste cond { yyerror("liste attendue avant ','."); getch(); exit(1); }
		| liste_cmp error cond { yyerror("',' attendue dans la liste."); getch(); exit(1); }
		| liste_cmp separateur_liste error { yyerror("condition attendue après ','."); getch(); exit(1); }
		;
fonction : nom_fonction parenthese_o liste parenthese_f {
			switch($1){
				case 1:
					$$ = somme($3);
					break;
				case 2:
					$$ = produit($3);
					break;
				case 3:
					$$ = moyenne($3);
					break;
				case 4:
					$$ = variance($3);
					break;
				case 5:
					$$ = ecart_type($3);
					break;
				case 6:
					$$ = max($3);
					break;
				case 7:
					$$ = min($3);
					break;
				//TODO default:
			}
		}
		| error parenthese_o liste parenthese_f { yyerror("nom de fonction erroné"); getch(); exit(1); }
		| nom_fonction error liste parenthese_f { yyerror("'(' attendue après nom de fonction"); getch(); exit(1); }
		| nom_fonction parenthese_o error parenthese_f { yyerror("erreur dans la liste des paramètres."); getch(); exit(1); }
		| nom_fonction parenthese_o liste error { yyerror("')' attendue à la fin de la liste des paramètres."); getch(); exit(1); }
		;
liste : expr separateur_liste liste { insert_node(&$3,$1); $$=$3; }
		| expr					{ $$=NULL; insert_node(&$$,$1); }
		| error separateur_liste liste { yyerror("expression attendue avant ','."); getch(); exit(1); }
		| expr error liste { yyerror("',' attendue dans la liste."); getch(); exit(1); }
		| expr separateur_liste error { yyerror("liste attendue après ','."); getch(); exit(1); }
		;
%%

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