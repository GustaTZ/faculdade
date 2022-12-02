#include "stdio.h"
main(){
	char nome[10];
	puts("Digite o seu nome: "); //A função puts imprime na tela uma string especificada, incluindo uma nova linha ('\n') ao final da impressão.
	gets(nome);
	printf("Voce digitou: %s",nome);
}
