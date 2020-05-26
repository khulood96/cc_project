%{
void yyerror (char*s);
#include <stdio.h>
#include <stdlib.h>

int symbols[52];
int symbolVal(char symbol);
void UpdateSymbolVal(char symbol, int val);
%}

%%
%union {int num; char id;}
%start line
%token print
%token <int> integer;
%token <id> identifier;
%token <str> string;
%token <dlmtr> delimiter;
%token <op> operator;
%token <kywd> keyword;
%token single_input;
%token file_input;
%token del_stmt;
%token pass_stmt;
%token flow_stmt;
%token break_stmt;
%token continue_stmt;
%token return_stmt;
%token yield_stmt;
%token raise_stmt;
%token import_stmt;
%token import_name;
%%

line: assignment '\n';
assignment	:	identifier '=' string
		|	identifer '=' int
		|	keyword identifier '=' string
		|	keyword identifier '=' int
		;

del_stmt	:	'del' exprlist;
pass_stmt	:	'pass';
flow_stmt	:	break_stmt 
		|	continue_stmt 
		|	return_stmt
		|	raise_stmt 
		|	yield_stmt
		;

break_stmt	:	'break';
continue_stmt	:	'continue';
return_stmt	:	'return' [testlist_star_expr];
yield_stmt	:	yield_expr;
raise_stmt	:	'raise' [test ['from' test]];
import_stmt	:	import_name 
		|	import_from
		;

import_name	:	'import' dotted_as_names;


