#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TAMANHO_NOME 50

typedef struct Produto
{
    int codigo;
    char nome[TAMANHO_NOME];
    int qtd_disponivel;
    float preco;
} Produto;

Produto* produto_maior_preco(Produto* produtos, int n);

int main() {

    int i, n;
    Produto* produtos = NULL;

    printf("\nDigite o numero de produtos: ");
    scanf("%d", &n);

    produtos = (Produto*) malloc(n * sizeof(Produto));

    printf("\nDigite os dados dos produtos: \n");
    for(i = 0; i < n; i++) {
        printf("\nProduto %d", i + 1);
        printf("\nCodigo: ");
        scanf("%d", &(produtos[i].codigo));

        // codigo para remover a newline '\n' que estava atrapalhando fgets()
        while(getchar() != '\n');

        printf("Nome: ");
        fgets(produtos[i].nome, TAMANHO_NOME, stdin);

        // removendo o \n do fim da string nome
        if (strlen(produtos[i].nome) > 0 && produtos[i].nome[strlen(produtos[i].nome) - 1] == '\n') {
            produtos[i].nome[strlen(produtos[i].nome) - 1] = '\0';
        }

        printf("Quantidade: ");
        scanf("%d", &(produtos[i].qtd_disponivel));
        printf("Preco: ");
        scanf("%f", &(produtos[i].preco));
    }

    // printf("Lista de Produtos: \n");
    // for (i = 0; i < n; i++){
    //     printf("\nCodigo: %d\n", produtos[i].codigo);
    //     printf("Nome: %s\n", produtos[i].nome);
    //     printf("Qtd: %d\n", produtos[i].qtd_disponivel);
    //     printf("Preco: %.2f\n", produtos[i].preco);
    // }

    Produto* p = produto_maior_preco(produtos, n);
    printf("\nPRODUTO COM MAIOR PRECO: \n");
    printf("Nome: %s\n", p->nome);
    printf("Preco: %.2f\n", p->preco);

    return 0;
}

Produto* produto_maior_preco(Produto* produtos, int n) {

    int i;
    int maior_preco = produtos[0].preco;
    Produto* p = &produtos[0];

    for (i = 1; i < n; i++) {
        if(produtos[i].preco > maior_preco) {
            maior_preco = produtos[i].preco;
            p = &produtos[i];
        }
    }

    return p;
}