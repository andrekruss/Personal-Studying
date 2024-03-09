/*
Exercício 2 - 
Faça uma função em C que receba como parâmetro 
os valores de a, b e c de uma equação de 2º grau 
e retorne o delta da função.
*/

#include <iostream>

int calculaDelta(int a, int b, int c);

int main() {

    int a, b, c, delta;

    std::cout << "Digite o parâmetro a: \n";
    std::cin >> a;
    std::cout << "Digite o parâmetro b: \n";
    std::cin >> b;
    std::cout << "Digite o parâmetro c: \n";
    std::cin >> c;

    delta = calculaDelta(a, b, c);

    std::cout << "O valor de delta eh: " << delta;

    return 0;
}

int calculaDelta(int a, int b, int c)
{
    return b * b - 4 * a * c;
}