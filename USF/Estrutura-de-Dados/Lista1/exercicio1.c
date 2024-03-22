#include <stdio.h>

#define TAMANHO_VETOR 10

void menor(int vec[], int* menor, int* vezes);

int main() {

    int i;
    int menor_valor, vezes;
    int v[TAMANHO_VETOR];
    
    printf("Digite os elementos do vetor:  \n");
    for(i = 0; i < TAMANHO_VETOR; i++) {
        printf("\nDigite o elemento %d: ", i + 1);
        scanf("%d", &v[i]);
    }

    menor(v, &menor_valor, &vezes);

    printf("\nMenor valor: %d\n", menor_valor);
    printf("Numero de vezes que aparece: %d\n", vezes);

    return 0;
}

void menor(int vec[], int* menor, int* vezes) {
    
    int i;

    *menor = vec[0];
    *vezes = 1;

    for (i = 1; i < TAMANHO_VETOR; i++) {
        if (vec[i] < *menor){
            *menor = vec[i];
            *vezes = 1;
        }
        else if (vec[i] == *menor) {
            *vezes += 1;
        }
    }
}