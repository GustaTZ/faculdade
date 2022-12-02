#include "stdio.h"

float mediaPonderada(float nota1, float nota2){
	float media;
	media=nota1*0.4+nota2*0.6;
	return media;
}
char conceito(float media){
	char conc;
	if(media<=4.9){
		conc='D';
	}else if(media<=6.9){
		conc='C';
	}else if(media<=8.9){
		conc='B';
	}else{
		conc='A';
	}
	return conc;
}
int main(){
	float nota1, nota2, med;
	int i;
	char conce;
	for(i=0;i<5;i++){
		printf("\nDigite a primeira nota: ");
		scanf("%f", &nota1);
		printf("\nDigite a segunda nota: ");
		scanf("%f", &nota2);
		med=mediaPonderada(nota1,nota2);
		conce=conceito(med);
		printf("\nmedia = %f \nConceito = %c",med,conce);
	}
}
