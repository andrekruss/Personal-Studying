/*
Exercício 3 - Faça uma função que receba como parâmetro o raio de
uma esfera e mais dois ponteiros por referência que altere seu
conteúdo para o volume e área. Use o protótipo:
void esfera(float raio, float *volume, float *area)
V = 4/3 π r³
A = 4πr²
*/
#include <stdio.h>
#include <stdlib.h>

#define PI 3.14

void esfera(float raio, float* volume, float* area);

int main() {
	
	float r;
	float a, v;
	
	printf("Digite o raio da esfera: \n");
	scanf("%f", &r);
	
	esfera(r, &v, &a);
	
	printf("Area da esfera: %.2f\n", a);
	printf("Volume da esfera: %.2f\n", v);
	
	return 0;
}

void esfera(float raio, float* volume, float* area){
	*area = 4 * PI * raio * raio;
	*volume = (4.0 / 3) * PI * raio * raio * raio;
}
