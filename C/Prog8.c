#include "stdio.h"
main(){
	float notas[4];
	float soma=0,media;
	int i;
	printf("\nCalculo da media\n");
	for(i=0;i<=3;i++){
		printf("Informe a %da. nota: ",i+1);
		scanf("%f",&notas[i]);
		soma += notas[i]; // igual a: soma=soma+&notas[i];
	}
	media=soma/4;
	printf("A media a igual a: %4.2f",media);
}	
