#include "stdio.h"
main(){
	char nome[10];
	puts("Digite o seu nome: "); //A fun��o puts imprime na tela uma string especificada, incluindo uma nova linha ('\n') ao final da impress�o.
	gets(nome);
	printf("Voce digitou: %s",nome);
}
