#include "stdio.h"
main(){
	float nota1,nota2,nota3,nota4;
	float soma=0,media;
	printf("\nCalculo da media\n");
	printf("\nInforme as 4 notas\n");
	scanf("%f %f %f %f", &nota1, &nota2, &nota3, &nota4);
	soma=nota1+nota2+nota3+nota4;
	media=soma/4;
	printf("A media e igual a: %4.2f", media);
}
