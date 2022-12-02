#include "stdio.h"
main() 
{ 

	int i, j; 
	printf("Informe a quantidade de repeticoes: ");
	scanf("%d", &j);
    for (i=1; i<=j; i++) 
        printf("i = %d\n", i);
}
