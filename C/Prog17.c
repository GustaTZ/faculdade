#include "stdio.h"

int main(void){
	int x = 100;
	int *ptrx = &x;
	int y = 200;
	*ptrx = y;
	printf("%d\n",x);
	printf("%d\n",y);
}
