#include <stdio.h>
main()
{
    int a[10],i,pares=0;
    printf("Insira 10 valores: ");
    for(i=0; i<10; i++)
        scanf("%d",&a[i]);
    for(i=0; i<10; i++)
    {
        if(a[i]%2==0)
            pares=pares+a[i];
    }
    printf("Total da soma dos numeros pares: %d ",pares);
    getch();
}
