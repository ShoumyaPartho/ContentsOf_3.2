letters [a-zA-Z]
digits  [0-9]
space   " "
newline "\n"

%%

" "             {printf(" ");}
"#shagotom"     {printf("#include");}
"#janau"        {printf("#define");}
"purno"         {printf("int");}
"vognangsho"    {printf("float");}
"LP"            {printf("(");}
"RP"            {printf(")");}
"faka"          {printf("void");}


"jodi"          {printf("if");}
"nahole_jodi"   {printf("else if");}
"nahole"        {printf("else");}
"dhori"         {printf("switch");}
"chalaw"        {printf("continue");}
"beriye_jao"    {printf("break");}
"chole_jao"     {printf("return");}

"jog"           {printf("+");}
"tulo"          {printf("++");}
"namau"         {printf("--");}
"biog"          {printf("-");}
"gun"           {printf("*");}
"vag"           {printf("/");}
"eq"            {printf("=");}
"boro"          {printf(">");}
"choto"         {printf("<");}
"boro_shoman"   {printf(">=");}
"choto_shoman"  {printf("<=");}
"bindu"         {printf(".");}

"ebong"         {printf("&&");}
"othoba"        {printf("||");}
"na"            {printf("~");}

"ghuralam"      {printf("for");}
"jotokkhon"     {printf("while");}

"er_sine"       {printf("sine");}
"er_cos"        {printf("cos");}
"er_tan"        {printf("tan");}

"valar_morghulis"   {printf("freopen");}
"valar_dohaeris"    {printf("fclose");}
"dracarys"          {printf("printf");}
"daenerys"          {printf("scanf");}


%%

int yywrap(){
    return 1;
}

int main(){

    freopen("input.txt","r",stdin);
    freopen("output.txt","w",stdout);

    yylex();
    return 0;
}