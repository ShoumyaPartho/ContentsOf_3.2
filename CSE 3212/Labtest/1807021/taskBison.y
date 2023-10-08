%{
    #include<stdio.h>
	#include<stdlib.h>
	#include<string.h>

	int yylex(void);
	void yyerror(char *s);

    struct varStruct{
		char varName[25];
        char *cvar;
		int ivar;
		float fvar;
        int varDataType;
	}vars[50]; 
%}

