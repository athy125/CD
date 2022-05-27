%{
int a=0; 
%}

%%
[ ] a++;
%%

int main() {
yylex();
printf("\n Spaces = %d \n", a);
}

