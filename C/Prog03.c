#include "stdio.h"
main()
{
	int a;
	int b;
	int total;
	printf("Soma dois numeros inteiros \n");
	printf("Informe o primeiro valor:");
	scanf("%d", &a);
	printf ("Informe o segundo valor:");
	scanf("%d", &b);
	total = a + b; // a + b esta sendo atribuido a variavel total
	printf("%d", total);
}	
