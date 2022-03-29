%{
    #include<stdio.h> 
    int yyerror();
%}

%token NUMBER
%%
    grammar: E { printf("arithmetic expression is valid"); return 0;};
    E:E'+'E 
     |E'-'E   
     |E'*'E 
     |E'/'E   
     |E'%'E  
     |'('E')' 
     |NUMBER 
     ;
%%

int main()
{
    printf("enter arithmetic expr\n");
    yyparse();
    return 0;
}
int yyerror()
{
    printf("arithmetic expression is invalid");
    return 0;
}
