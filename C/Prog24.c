#include "stdio.h"
#include "locale.h"

int pesquisaBinaria(int arrays[],int length,int valorInformado){
	int baixo=0;
	int alto=length;
	int medio;
	while (baixo<=alto){
		medio=(baixo+alto)/2;
		if(arrays[medio]==valorInformado){
			return medio;
		}else if(arrays[medio]<valorInformado){
			baixo=medio+1;
		}else if (arrays[medio]>valorInformado){
			alto=medio-1;
		}
	}
}
int main(){
	setlocale(LC_ALL, "Portuguese");
	int valores[]={30, 40, 50, 70, 85, 90, 100};
	int length=sizeof(valores)/sizeof(valores[0]);
	int valorInformado=90;
	int indice=pesquisaBinaria(valores, length,valorInformado);
	printf("O valor %d foi encontrado e seu índice é: %d",valorInformado,indice);
	return 0;
}
