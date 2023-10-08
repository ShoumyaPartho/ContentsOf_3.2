%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
%}

%%

[h][t][t][p][:][/][/][a-z][a-z][a-z][&][A-Z][0-9]([a-zA-Z][0-9])*[#][0-9][0-9][0-9][0-9][:][0-9][0-9]*[?][0-9][0-9]*    {printf("Matched\n");}


.   {printf("Unmatched\n"); yyterminate();}
\n


%%

int yywrap(){
    return 1;
}

void main(){
    yylex();
}