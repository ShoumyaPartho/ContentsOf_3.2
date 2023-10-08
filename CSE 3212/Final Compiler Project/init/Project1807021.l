%{
    // Partho Choudhury Shoumya --- Roll: 1807021
	
    // Ruquired function definiton and header files are declared here.

	#include<stdio.h>
    #include<string.h>
	#include<stdlib.h>
    #include "Project1807021.tab.h"

	extern char* strdup(const char*);
	void yyerror(char *s);
%}

	// Some definitions to work smoothly

MATHA	"shagotom"[ ]+[^\n]+[.h][ ]*
ID	    [a-zA-Z][a-zA-Z0-9]*
NUMBER	[-]?[0-9][0-9]*[.]?[0-9]*

%%

    // Detecting Keywords

[ \t]+
"shuru()"       return(MAIN);
"purno"         return(INT);
"vognangsho"    return(FLOAT);
"borno"         return(CHAR);

"ghaat"         return(POW);
"jekunu_kichu"  return(RANDOM);
"khujo_fact"    return(FACTOR);
"moulik_ki_na"  return(ISPRIME);

"jodi"          return(IF);
"nahole_jodi"   return(ELIF);
"nahole"        return(ELSE);
"dhori"         return(SWITCH);
"ghotona"       return(CASE);
"sadharon"      return(DEFAULT);
"theke"         return(TO);

"jog"           return(PLUS);
"tulo"          return(INC);
"namau"         return(DEC);
"biog"          return(MINUS);
"gun"           return(MULTI);
"vag"           return(DIVI);
"boro"          return(GT);
"choto"         return(LT);
"boro_shoman"   return(GOE);
"choto_shoman"  return(LOE);
"sorbocco"      return(MAX);
"sorbonimno"    return(MIN);
"somansoman"    return(EQUALS);
"somannoy"      return(NOTEQUAL);

"ghuralam"      return(REPEAT); // for loop
"jotokkhon"     return(WHILE);

"er_sine"       return(SIN);
"er_cos"        return(COS);
"er_tan"        return(TAN);
"er_gen_log10"  return(LOG10);

"dracarys"          return(OUTPUT);
"daenerys"          return(SCAN);


{MATHA}	printf("Header file has been imported.\n");
{ID}	{yylval.varString = strdup(yytext); return(ID);}
{NUMBER}	{
            int len = strlen(yytext), i = 0;

			while(i<len){
				if(yytext[i]=='.'){
					yylval.var = atof(yytext); 
					return(NUM);
				}
				i++;
			}
			yylval.var = atoi(yytext); 
			return(NUM);
		}

[=,;{}()_^]	{yylval.varString = strdup(yytext); return *yytext;}
.		yyerror("Error! Invalid character inserted");
[##].*	printf("\n Single Line comment resides here\n");
[\n]	{}


%%

int yywrap(){
    return 1;
}