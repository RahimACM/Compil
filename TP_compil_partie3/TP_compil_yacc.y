%{
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
%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

%union{
	char* symb;
	int func;
	struct node *list;
}

%token plus moins prod div puis parenthese_o parenthese_f
%token <symb> variable
%token <func> nom_fonction
%token separateur_liste
%token fin_ligne

%type <symb> expr fonction
%type <list> liste

%left plus,moins
%left prod,div
%right puis
%nonassoc moins_unaire

%%

/////////////////////////////////////////////////////////////////////////////
// rules section
ligne : expr fin_ligne {
			fprintf(yyout,"%4d:\t MOV, %6s,       , result\n", line++, $1);
			printf("Code généré avec succés dans le fichier out.txt.\n");
			getch();
			exit(0);
		}
		| error fin_ligne { yyerror("il n'y a pas d'expression à Ã©valuer.\n"); getch(); exit(1); }
		| expr error { yyerror("fin de ligne attendue.\n"); getch(); exit(1); }
		;
expr : expr plus expr {
			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   +, %6s, %6s, %6s\n", line++, $1, $3, string);
			sprintf($$,"tmp%d", cpttmp++);
		}
		| expr moins expr {
			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   -, %6s, %6s, %6s\n", line++, $1, $3, string);
			sprintf($$,"tmp%d", cpttmp++);
		}
		| expr prod expr {
			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   *, %6s, %6s, %6s\n", line++, $1, $3, string);
			sprintf($$,"tmp%d", cpttmp++);
		}
		| expr div expr {
			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   /, %6s, %6s, %6s\n", line++, $1, $3, string);
			sprintf($$,"tmp%d", cpttmp++);
		}
		| expr puis expr {
			$$ = puissance($1,$3);
		}
		| moins expr %prec moins_unaire {
			char* string = (char*)malloc(sizeof(char)*6);
			sprintf(string,"tmp%d", cpttmp);
			fprintf(yyout,"%4d:\t   *, %6s,     -1, %6s\n", line++, $2, string);
			$$ = (char*)malloc(sizeof(char));
			sprintf($$,"tmp%d", cpttmp++);
		}
		| parenthese_o expr parenthese_f { $$ = $2; }
		| variable	{
			$$ = (char*)malloc(sizeof(char)*6);
			sprintf($$,"%s",$1);
		}
		| fonction	{ $$ = $1; }
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
		| expr error expr { yyerror("opÃ©ration manquante entre deux expressions.\n"); getch(); exit(1); }
		| moins error %prec moins_unaire { yyerror("expression attendue après '-'.\n"); getch(); exit(1); }
		| error expr parenthese_f { yyerror("'(' attendue avant expression.\n"); getch(); exit(1); }
		| parenthese_o error parenthese_f { yyerror("expression attendue entre '(' et ')'.\n"); getch(); exit(1); }
		| parenthese_o expr error { yyerror("')' attendue après expression.\n"); getch(); exit(1); }
		| error { yyerror("fonction ou nom variable attendus.\n"); getch(); exit(1); }
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
		| error parenthese_o liste parenthese_f { yyerror("nom de fonction erronÃ©."); getch(); exit(1); }
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