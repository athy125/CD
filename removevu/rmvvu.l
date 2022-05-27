%{  
    int count=0; 
    char replace[] = "vu"; #creating a string vu
%}

%%

[a-zA-Z]+ {if (strcmp(yytext, replace)==0)  #If strcmp() returns 0 then print out on screen and count++ will increment by 1 because we have reached our limit for how many times we can print out on screen.
            {printf("");
            count++;}
            else{
                printf("%s", yytext);
            };}

. {printf("%s", yytext);} #The code will print the text "Hello, world!"

%%

int main(int argc, char *argv[]){ #Otherwise, it will print the number of times that "world" appears in the input string.
    yyin = fopen(argv[1], "rb+");
    yylex();

    printf("\n\n%d vu", count);

    return 0;
}

int yywrap(){
    return 1;
}
