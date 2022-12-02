#include "stdio.h"
#include "string.h"
#include "locale.h"
#define TRUE 1
#define FALSE 0

int main(){
	setlocale(LC_ALL, "Portuguese");
	int valores[]={90, 70, 50, 80, 60, 85};
	printf("Entre com o valor a ser encontrado: \n");
	int valorInformado;
	scanf("%d", &valorInformado);
	int encontrou=FALSE;
	int length=sizeof(valores)/sizeof(valores[0]);
	int i;
	for(i=0;i<length;i++){
		if(valores[i]==valorInformado){
			encontrou = TRUE;
			printf("O valor %d foi encontrado e o índice é: %d",valorInformado,i);
			break;
		}
	}
	if(!encontrou){
		printf("O valor %d não foi encontrado",valorInformado);
	}
}
