%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
%}

%%

"int"       {return INT;}
"float"     {return FLOAT;}
"char"      {return CHAR;}


%%

int yywrap(){
    return 1;
}