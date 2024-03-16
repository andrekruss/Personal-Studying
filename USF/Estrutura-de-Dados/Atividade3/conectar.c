#include <stdio.h>
#include <stdlib.h>

typedef struct No{
    float dado;
    struct No* proximo;
}No;

struct No* criarNo(float dado) {
    struct No* novoNo = (struct No*)malloc(sizeof(struct No));
    if (novoNo == NULL) {
        printf("Erro: Sem memoria!\n");
        exit(1);
    }
    novoNo->dado = dado;
    novoNo->proximo = NULL;
    return novoNo;
}

void inserirNoFinal(struct No** lista, float dado) {
    struct No* novoNo = criarNo(dado);
    if (*lista == NULL) {
        *lista = novoNo;
    } else {
        struct No* temp = *lista;
        while (temp->proximo != NULL) {
            temp = temp->proximo;
        }
        temp->proximo = novoNo;
    }
}

//Imprime a lista
void imprimirLista(struct No* lista) {
    struct No* temp = lista;
    printf("Lista: \n\n");
    while (temp != NULL) {
        printf("%.2f \n", temp->dado);
        temp = temp->proximo;
    }
    printf("\n");
}
/*
MAIN
*/

int main() {
    float valor;
    int qtd, i;
    struct No* lista = NULL;
    
    printf("Quantos valores deseja inserir na lista? ");
    scanf("%d", &qtd);

    for (i = 0; i < qtd; i++) {
        printf("Digite o valor %d --> ", i + 1);
        scanf("%f", &valor);
        inserirNoFinal(&lista, valor);
    }
    

//saida
    imprimirLista(lista);

    return 0;
}
