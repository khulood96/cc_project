%{
#include "lexer.h"
#include <stdio.h>
char ans [1000];
%}

%%
True|False|None|and|as|assert|async|await|break|class|continue|del|def|elif|else|except|finally|for|from|global|if|import|in|is|lambda|nonlocal|not|or|pass|raise|return|try|while|with|yield		{printf("%s %s \n", yytext, KEYWORD);
			strcat(ans, KEYWORD);
			strcat(ans," ");
			strcat(ans, yytext);
			strcat(ans,"\n");}

[a-zA-Z][_a-zA-Z0-9]*	{printf("%s %s \n",yytext, IDENTIFIER);
			strcat(ans, IDENTIFIER);
			strcat(ans," ");
			strcat(ans, yytext);
			strcat(ans,"\n");}

[0]|[1-9][0-9]*		{printf("%s %s \n",yytext, INTEGER);
			strcat(ans, INTEGER);
			strcat(ans," ");
			strcat(ans, yytext);
			strcat(ans,"\n");}
[():\[\]]		{printf("%s %s \n",yytext, DELIMITER);
			strcat(ans, DELIMITER);
			strcat(ans," ");
			strcat(ans, yytext);
			strcat(ans,"\n");}
(\%|\=|\+|\>|\<|\*|\-|\/\/|>=|<=|==|!=|\++|--)		{printf("%s %s \n", yytext, OPERATOR);
			strcat(ans, OPERATOR);
			strcat(ans," ");
			strcat(ans, yytext);
			strcat(ans,"\n");}


["]([^"\\\n]|\\.|\\\n)*["]	{printf("%s %s \n",yytext, STRING);
			strcat(ans, STRING);
			strcat(ans," ");
			strcat(ans, yytext);
			strcat(ans,"\n");}


[ \t]			;
[\n]			return 0;
.			printf("unexpected character\n");

%%

int yywrap(){}
int main(){

FILE *fp;

fp = fopen("output.txt", "w+");
yylex();
fprintf(fp, "%s", ans);
fclose(fp);

return 0;
}
