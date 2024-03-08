/*
Atividade
Elabore um programa que colete o salário, idade e sexo (M ou F) de
10 pessoas, para isso, elabore um vetor de registro alocado
dinamicamente
*/

#include <stdio.h>
#include <stdlib.h>

#define NUM_PESSOAS 10

typedef struct Pessoa
{
    float salario;
    int idade;
    char sexo;
} Pessoa;


int main() {

    Pessoa* pessoas;
    pessoas = (Pessoa*) malloc(NUM_PESSOAS * sizeof(Pessoa));

    if (pessoas == NULL){
        printf("Erro ao alocar memoria.\n");
        return 1;
    }

    int i;

    for (i = 0; i < NUM_PESSOAS; i++)
    {
        printf("DADOS PESSOA %d\n", i + 1);
        printf("Digite o salario: \n");
        scanf("%f", &(pessoas[i].salario));
        printf("Digite a idade: \n");
        scanf("%d", &(pessoas[i].idade));
        printf("Digite o sexo (M ou F): \n");
        scanf(" %c", &(pessoas[i].sexo));
        printf("\n");
    }

    printf("Informacoes das pessoas: \n");

    for (i = 0; i < NUM_PESSOAS; i++) 
    {
        printf("Pessoa %d\n", i + 1);
        printf("Salario: %2.f\n", pessoas[i].salario);
        printf("Idade: %d\n", pessoas[i].idade);
        printf("Sexo: %c\n", pessoas[i].sexo);
        printf("\n");
    }

    free(pessoas);

    return 0;
}