/*Struct
Informar o nome do aluno
Informar duas notas do aluno
Calcular e apresentar a média do aluno*/

#include "stdio.h"
main() {
	struct cad_aluno {
		char nome[30];
		float nota1;
		float nota2;
	};
	struct cad_aluno aluno;
	
	printf("Informe o nome .......: "); scanf("%s", &aluno.nome);
	printf("Informe a 1a. nota ...: "); scanf("%f", &aluno.nota1);
	printf("Informe a 2a. nota ...: "); scanf("%f", &aluno.nota2);

	
	printf("\n");
	
	printf("Nome .......: %s\n", aluno.nome);
	printf("Nota1 ......: %4.2f\n", aluno.nota1);
	printf("Nota1 ......: %4.2f\n", aluno.nota2);
	printf("Media ......: %4.2f\n", (aluno.nota1+aluno.nota2)/2);

	
}
