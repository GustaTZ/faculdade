#include <stdio.h>
#include <locale.h>

main(){
	setlocale(LC_ALL, "Portuguese");
	int a;
	int b;
		printf("Verifica qual numero inteiro � maior\n");
		printf("Informe o valor para A: ");
		scanf("%d",&a);
		printf("Informe o valor para B: ");
		scanf("%d",&b);
			if(a>b){
				printf("\nValor de A � maior que B");
			}else if(a<b){
				printf("\nValor de B � maior que A");
			}else{
				printf("\nValor de A e B s�o iguais");
		}
}

