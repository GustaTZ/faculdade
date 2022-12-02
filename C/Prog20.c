#include "stdio.h"

void bubble_sort(int vet[],int tam){
	int i,j;
	int aux;
	
	for(i=1;i<tam;i++){
		for(j=0;j<tam-1;j++){
			if(vet[j]>vet[j+1]){
				aux=vet[j];
				vet[j]=vet[j+1];
				vet[j+1]=aux;
			}
		}
	}
}
main(){
	int vet[10]={9,8,7,6,5,4,3,2,1,0};
	int tam=10;
	int i;
	bubble_sort(vet,tam);
	for(i=0;i<tam;i++){
		printf("\n vet[%d] = %d",i,vet[i]);
	}
}

