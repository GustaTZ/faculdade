//Insertion Sort

#include <stdio.h>

// funcao para imprimir os elementos do array
void display(int arr[], int n) { 
	int i;    
	for (i = 0; i < n; i++) {
		printf("%d ", arr[i]);
	}
	printf("\n");
}
// funcao para ordenar os elementos do array
void insertionSort(int arr[], int n) {
	int i;
	for (i = 1; i < n; i++) {
		int tmp = arr[i];
		int j = i - 1;
    
		while (tmp < arr[j] && j >= 0) {
			arr[j + 1] = arr[j];
			--j;
		}
	arr[j + 1] = tmp;
	}
}
// funcao principal
int main() {
	int arr[] = {9, 5, 1, 4, 3};
	int n = sizeof(arr) / sizeof(arr[0]);
	printf("Elementos antes da ordenacao:\n");
	display(arr, n);
	insertionSort(arr, n);
	printf("Elementos depois da ordenacao:\n");
	display(arr, n);
}
