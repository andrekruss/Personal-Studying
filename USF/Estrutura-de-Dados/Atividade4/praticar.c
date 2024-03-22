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
int remove_menor(No* lista);

int main() {

    No* l = NULL;

    int i;
    int valor;
    int tamanho;

    printf("\nDigite o numero de elementos da lista: \n");
    scanf("%d", &tamanho);

    printf("\nInsira os elementos da lista 1: \n");
    for(i = 0; i < tamanho; i++) {
        scanf("%d", &valor);
        No* n = cria_no(valor);
        l = insere_no(l, n);
    }

    printf("\n\nLista: \n");
    imprime_lista(l);
    
    int min = remove_menor(l);
    
    printf("\n\nMenor elemento da lista: %d\n", min);

    libera_lista(l);

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

int remove_menor(No* lista) {
	
    if (lista == NULL){
        printf("\nLista vazia\n.");
        return 0;
    }

	int min = lista->valor;
	No* temp = lista->proximo;
	
	while(temp != NULL) {
		if (temp->valor < min)
			min = temp->valor;
		temp = temp->proximo;
	}
	return min;
}
