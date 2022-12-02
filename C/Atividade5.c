#include "stdio.h"
main(){
	char nome1[30];
	char nome2[30];
	char nome3[30];
	char nome4[30];
	float nota1;
	float nota2;
	
	float nota3;
	float nota4;
	
	float nota5;
	float nota6;
	
	float nota7;
	float nota8;
	
	printf("Informe o nome1 .......: "); scanf("%s", &nome1);
	printf("Informe a 1a. nota ...: "); scanf("%f", &nota1);
	printf("Informe a 2a. nota ...: "); scanf("%f", &nota2);

	printf("Informe o nome2 .......: "); scanf("%s", &nome2);
	printf("Informe a 1a. nota ...: "); scanf("%f", &nota3);
	printf("Informe a 2a. nota ...: "); scanf("%f", &nota4);
	
	printf("Informe o nome3 .......: "); scanf("%s", &nome3);
	printf("Informe a 1a. nota ...: "); scanf("%f", &nota5);
	printf("Informe a 2a. nota ...: "); scanf("%f", &nota6);
	
	printf("Informe o nome4 .......: "); scanf("%s", &nome4);
	printf("Informe a 1a. nota ...: "); scanf("%f", &nota7);
	printf("Informe a 2a. nota ...: "); scanf("%f", &nota8);



	printf("Nome1 .......: %s\n", nome1);
	printf("Nota1 ......: %4.2f\n", nota1);
	printf("Nota2 ......: %4.2f\n", nota2);
	printf("Media ......: %4.2f\n", (nota1+nota2)/2);
	
	printf("Nome1 .......: %s\n", nome1);
	printf("Nota1 ......: %4.2f\n", nota3);
	printf("Nota2 ......: %4.2f\n", nota4);
	printf("Media ......: %4.2f\n", (nota3+nota4)/2);
	
	printf("Nome1 .......: %s\n", nome1);
	printf("Nota1 ......: %4.2f\n", nota5);
	printf("Nota2 ......: %4.2f\n", nota6);
	printf("Media ......: %4.2f\n", (nota5+nota6)/2);
	
	printf("Nome1 .......: %s\n", nome1);
	printf("Nota1 ......: %4.2f\n", nota7);
	printf("Nota2 ......: %4.2f\n", nota8);
	printf("Media ......: %4.2f\n", (nota7+nota8)/2);


}
	

