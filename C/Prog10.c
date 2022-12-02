#include "stdio.h"
main(){
	float notas[8][4];
	float numero;
	int i,j;
	printf("\nCalculo da media\n");
	for(i=0;i<=7;i++){
		printf("Informe a nota do %do. aluno: ",i+1);
		for(j=0;j<=3;j++){
			printf("Nota: %d: ",j+1);
			scanf("%f",&numero);
			notas[i][j]=numero;
		}
	}
	//saida das notas
	
		for (i = 0; i <= 7; i++) {
		printf("\nAs notas do %do. aluno sao: ", i+1);
		for (j = 0; j <= 3; j++) {
			printf("Nota: %d: %5.2f\n", j+1, notas[i][j]);
		}
	}
}
