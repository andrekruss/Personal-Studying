#include <stdio.h>

int calculaDelta(int a, int b, int c);

int main(){
    int delta;
    int a, b, c;

    printf("Insira o parametro a: \n");
    scanf("%d", &a);
    printf("Insira o parametro b: \n");
    scanf("%d", &b);
    printf("Insira o parametro c: \n");
    scanf("%d", &c);
    
    delta = calculaDelta(a, b, c);

    printf("Delta(%d, %d, %d) = %d", a, b, c, delta);

    return 0;
}

int calculaDelta(int a, int b, int c){
    return b * b - 4 * a * c;
}