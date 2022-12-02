#include "stdio.h"

void soma10(int a){
	a=a+10;
	printf("Valor apos a soma: %d\n",a);
	return;
}
void soma10p(int *a){
	*a=*a+10;
	printf("Valor apos a soma: %d\n",*a);
	return;	
}
int main(void){
	
	int x=20;
	printf("x vale: %d\n",x);
	
	soma10(x);
	printf("Agora x vale: %d\n",x);
	
	soma10p(&x);
	printf("Agora x vale: %d\n",x);
}
