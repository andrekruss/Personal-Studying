#include <stdio.h>

int main(){
    float matrizIMC[10][3];
    int contador = 0;

    for(int i = 0; i < 10; i++){
        printf("Insira o peso %d:\n", i + 1);
        scanf("%f", &matrizIMC[i][0]); 
        printf("Insira a altura %d: \n", i + 1);
        scanf("%f", &matrizIMC[i][1]); 
        matrizIMC[i][2] = (matrizIMC[i][0]) / (matrizIMC[i][1] * matrizIMC[i][1]);
    }

    printf("\n");

    for(int i = 0; i < 10; i++){
        printf("Peso %d: %.2f - ", i + 1, matrizIMC[i][0]);
        printf("Altura %d: %.2f - ", i + 1, matrizIMC[i][1]);
        printf("IMC: %.2f", matrizIMC[i][2]);
        printf("\n\n");

        if (matrizIMC[i][2] > 25.0f) {
            contador++;
        }
    }

    printf("%d pessoas tem IMC > 25", contador);

    return 0;
}