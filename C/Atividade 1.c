#include "stdio.h"
/*
ht = horas trabalhadas
vh = valor por hora
pd = percentual de desconto
---
sb = salario bruto
vd = valor do desconto
sl = salario liquido

*/
main()
{
	float ht, vh, pd, sb, vd, sl;
	
	printf("Horas trabalhadas:.....");
	scanf("%f", &ht);
	printf("Valor por hora:........");
	scanf("%f", &vh);
	printf("Percentual de desconto:");
	scanf("%f", &pd);

	sb = ht * vh;
	vd = (pd/100) * sb;
	sl = sb - vd;
	
	printf("Salario Bruto:.... %7.2f\n", sb);
	printf("Valor do desconto: %7.2f\n", vd);
	printf("Salario Liquido:.. %7.2f\n", sl);

	
}
