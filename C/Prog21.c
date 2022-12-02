//Select Sort

#include "stdio.h"

void selectionSort(int v[10], int n)
{
	int i, j, aux, min;
	for(i = 0; i < n-1; i++) {
		min = i;
		for(j = i+1; j < n; j++) {
			if(v[j] < v[min]) {
				min = j;
			}
		}
	 aux = v[i];
    v[i] = v[min];
    v[min] = aux; //troca
	}
}
void main()
{
	int v[10], n, i;
	printf("Entre tamanho desejado do vetor: ");
	scanf("%d", &n);
	printf("Entre os %d elementos do vetor:\n", n);
	for(i = 0; i < n; i++) {
		scanf("%d", &v[i]);
	}
	selectionSort(v, n);
	printf("\n\nVetor ordenado:\n");
	for(i = 0; i < n; i++) {
		printf("%d\t", v[i]);
	}
	printf("\n");
}
