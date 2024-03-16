#include <stdio.h>
#include <stdlib.h>

typedef struct No
{
    int valor;
    struct No* proximo;
} No;

No* cria_no(int valor);
int lista_vazia(No* lista);
No* insere_no(No* lista, No* n);
void imprime_lista(No* lista);
void libera_lista(No* lista);
No* concatena_listas(No* l1, No* l2);

int main() {

    No* l1 = NULL;
    No* l2 = NULL;
    No* lista_concatenada = NULL;

    int i;
    int valor;
    int n1, n2;

    printf("\nDigite o numero de elementos da lista 1: \n");
    scanf("%d", &n1);

    printf("\nInsira os elementos da lista 1: \n");
    for(i = 0; i < n1; i++) {
        scanf("%d", &valor);
        No* n = cria_no(valor);
        l1 = insere_no(l1, n);
    }

    printf("\nDigite o numero de elementos da lista 2: \n");
    scanf("%d", &n2);

    printf("\nInsira os elementos da lista 2: \n");
    for(i = 0; i < n2; i++) {
        scanf("%d", &valor);
        No* n = cria_no(valor);
        l2 = insere_no(l2, n);
    }

    printf("\n\nLista 1: \n");
    imprime_lista(l1);

    printf("\n\nLista 2: \n");
    imprime_lista(l2);

    lista_concatenada = concatena_listas(l1, l2);

    printf("\n\nLista Concatenada: \n");
    imprime_lista(lista_concatenada);

    libera_lista(l1);
    libera_lista(l2);
    libera_lista(lista_concatenada);

    return 0;
}

No* cria_no(int valor) {

    No* n = (No*) malloc(sizeof(No));

    if (n == NULL) {
        printf("Falha ao alocar memoria para um no.\n");
        exit(1);
    }

    n->valor = valor;
    n->proximo = NULL;

    return n;
}

int lista_vazia(No* lista) {
    if (lista == NULL)
        return 1;
    return 0;
}

No* insere_no(No* lista, No* n) {

    if (lista_vazia(lista)) {
        return n;
    }

    No* aux = lista;

    while (aux->proximo != NULL) {
        aux = aux->proximo;
    }

    aux->proximo = n;
    return lista;
}

void imprime_lista(No* lista) {

    if (lista_vazia(lista)){
        printf("Lista vazia.\n");
        return;
    }

    No* aux = lista;

    while(aux != NULL) {
        printf("%d ", aux->valor);
        aux = aux->proximo;
    }
}

void libera_lista(No* lista) {
    No* aux = lista;
    No* anterior = NULL;

    while(aux != NULL) {
        anterior = aux;
        aux = aux->proximo;
        free(anterior);
    }
}

No* concatena_listas(No* l1, No* l2){
    
    if (lista_vazia(l1))
        return l2;
    if (lista_vazia(l2))
        return l1;

    No* lista_concatenada = NULL;
    No* aux = l1;

    while (aux != NULL) {
        No* n = cria_no(aux->valor);
        lista_concatenada = insere_no(lista_concatenada, n);
        aux = aux->proximo;
    }

    aux = l2;

    while (aux != NULL) {
        No* n = cria_no(aux->valor);
        lista_concatenada = insere_no(lista_concatenada, n);
        aux = aux->proximo;
    }

    return lista_concatenada;
}