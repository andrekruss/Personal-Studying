#include <stdio.h>
#include <stdlib.h>

typedef struct no {
    int info;
    struct no* prox;
} lista;

struct no* cria_no(int valor);
void insere_no(struct no* novo_no, lista** l);
void imprime_lista(lista* l);
void limpa_lista(lista* l);
lista* retiraDaPosicao(lista* no, int pos);
int comp_tamanho(lista* l1, lista* l2);

int main() {

    int i;
    int n1, n2;
    int valor;
    lista* l1 = NULL;
    lista* l2 = NULL;

    printf("Digite o numero de elementos da lista 1: \n");
    scanf("%d", &n1);

    printf("\nDigite os elementos da lista 1: \n");
    for(i = 0; i < n1; i++) {
        printf("Digite o elemento %d: ", i + 1);
        scanf("%d", &valor);
        struct no* novo_no = cria_no(valor);
        insere_no(novo_no, &l1);
    }

    printf("\nLista 1: \n");
    imprime_lista(l1);

    int i1;
    printf("\n\nDigite o indice do elemento a ser removido da lista 1: ");
    scanf("%d", &i1);
    l1 = retiraDaPosicao(l1, i1);
    printf("Lista 1 atualizada: \n");
    imprime_lista(l1);

    printf("\nDigite o numero de elementos da lista 2: \n");
    scanf("%d", &n2);

    printf("\nDigite os elementos da lista 2: \n");
    for(i = 0; i < n2; i++) {
        printf("Digite o elemento %d: ", i + 1);
        scanf("%d", &valor);
        struct no* novo_no = cria_no(valor);
        insere_no(novo_no, &l2);
    }

    printf("\nLista 2: \n");
    imprime_lista(l2);

    int i2;
    printf("\n\nDigite o indice do elemento a ser removido da lista 2: ");
    scanf("%d", &i2);
    l2 = retiraDaPosicao(l2, i2);
    printf("Lista 2 atualizada: \n");
    imprime_lista(l2);

    if (comp_tamanho(l1, l2) == 1) 
        printf("\nA lista 1 eh a maior.\n");
    else if (comp_tamanho(l1, l2) == -1)
        printf("\nA lista 2 eh a maior.\n");
    else if (comp_tamanho(l1, l2) == 0)
        printf("\nAs listas 1 e 2 possuem o mesmo tamanho.\n");

    limpa_lista(l1);
    limpa_lista(l2);

    return 0;
}

struct no* cria_no(int valor){

    struct no* n = (struct no*) malloc(sizeof(struct no));
    if (n == NULL){
        printf("Erro ao alocar memoria!\n");
        exit(1);
    }

    n->info = valor;
    n->prox = NULL;
    return n;
}

void insere_no(struct no* novo_no, lista** l){
    if (*l == NULL){
        *l = novo_no;
        return;
    }

    lista* temp = *l;   

    while(temp->prox != NULL){
        temp = temp->prox;
    }

    temp->prox = novo_no;
    temp = NULL;
}

void imprime_lista(lista* l){
    while(l != NULL){
        printf("%d ", l->info);
        l = l->prox;
    }
    printf("\n");
}

void limpa_lista(lista* l) {

    lista* temp = l;

    while(temp != NULL) {
        temp = temp->prox;
        free(l);
        l = temp;
    }
}

lista* retiraDaPosicao(lista* no, int pos) {

    if(no == NULL){
        printf("Nao eh possivel retirar elemento de uma lista vazia.\n");
        return NULL;
    }

    struct no* temp = no;

    if (pos == 0){
        temp = no;
        no = no->prox;
        free(temp);
        return no;
    }

    int contador_posicao = 1;
    lista* anterior = temp;
    temp = temp->prox;

    while(temp != NULL){
        if (contador_posicao == pos){
            struct no* no_deletado = temp;
            temp = temp->prox;
            free(no_deletado);
            anterior->prox = temp;
            break;
        }
        contador_posicao++;
        anterior = temp;
        temp = temp->prox;
    }

    return no;
}

int comp_tamanho(lista* l1, lista* l2) {

    lista* temp1 = l1;
    lista* temp2 = l2;

    while(temp1 != NULL && temp2 != NULL) {
        temp1 = temp1->prox;
        temp2 = temp2->prox;
    }

    if (temp1 != NULL && temp2 == NULL)
        return 1;
    if (temp1 == NULL && temp2 != NULL)
        return -1;
    if (temp1 == NULL && temp2 == NULL)
        return 0;
}