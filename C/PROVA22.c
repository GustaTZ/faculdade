#include "stdio.h"
main()
{
      float alturas[5];
      float soma = 0, media;
      int i;
      printf("\nCalculo de media\n\n");
      for (i = 0; i <= 4; i++) {
            printf("Informe a altura da %da. pessoa: ", i+1);
            scanf("%f", &alturas[i]);
            soma += alturas[i];
      }
      media = soma / 5;
      printf("A altura media e igual a: %3.2f", media);
}

