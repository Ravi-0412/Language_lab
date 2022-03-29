
%{
int count=0;
%}
%%
[aeiouAEIOU] {count++;}
[\n]         {printf("no of vowels:%d\n",count);}
. {}
%%

int main()
{
    printf("enter any string:");
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}

