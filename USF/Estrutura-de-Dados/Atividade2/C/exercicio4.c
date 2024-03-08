/*
Exercício 4 - Crie uma função que receba um vetor alocado
dinamicamente do tipo char e seu tamanho como parâmetro e
retorne uma cópia do mesmo.
O cabeçalho da função deve ser:
char* copia_vetor(char *v, int tam)
*/
#include <stdio.h>
#include <stdlib.h>

char* copia_vetor(char* v, int tam);

int main() {
	
	int i, n;
	
	printf("Insira o tamanho do vetor: ");
	scanf("%d", &n);
	
	char* ptr = (char*) malloc(n * sizeof(char));
	
	if (ptr == NULL)
		return 1;
	
	for(i = 0; i < n; i++){
		printf("Digite o caractere %d: \n", i);
		scanf(" %c", &(ptr[i]));
	}
	
	char* vetor_copiado = copia_vetor(ptr, n);
	
	printf("\n\n");
	printf("Vetor copiado\n");
	for (i = 0; i < n; i++){
		printf("Caractere %d: %c\n", i, *(vetor_copiado + i));
	}
	
	return 0;
}

char* copia_vetor(char* v, int tam){
	int i;
	char* vetor = (char*) malloc(tam * sizeof(char));
	
	if (vetor == NULL) {
		printf("Erro ao alocar ponteiro.\n");
	}
	
	for(i = 0; i < tam; i++){
		*(vetor + i) = *(v + i);
		//vetor[i] = v[i];
	}
	
	return vetor;
}
