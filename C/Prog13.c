#include "stdio.h"
main() {
	struct cad_aluno {
		char nome[30];
		float nota1;
		float nota2;
		float nota3;
		float nota4;
	};
	struct cad_aluno aluno;
	
	printf("Cadastro de alunos\n\n");
	printf("Informe o nome .......: "); scanf("%s", &aluno.nome);
	printf("Informe a 1a. nota ...: "); scanf("%f", &aluno.nota1);
	printf("Informe a 2a. nota ...: "); scanf("%f", &aluno.nota2);
	printf("Informe a 3a. nota ...: "); scanf("%f", &aluno.nota3);
	printf("Informe a 4a. nota ...: "); scanf("%f", &aluno.nota4);
	
	printf("\n");
	
	printf("Nome .......: %s\n", aluno.nome);
	printf("Nota1 ......: %4.2f\n", aluno.nota1);
	printf("Nota1 ......: %4.2f\n", aluno.nota2);
	printf("Nota1 ......: %4.2f\n", aluno.nota3);
	printf("Nota1 ......: %4.2f\n", aluno.nota4);
	
}
