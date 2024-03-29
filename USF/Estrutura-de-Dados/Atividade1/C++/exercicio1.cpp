/*
Exercício 1 -
Faça um programa em C que leia o peso e a altura de 10 pessoas, 
calcule o IMC e salve em uma matriz 10 x 3. 
Como saída mostre a matriz e informe quantas pessoas 
tem IMC maior que 25. IMC = PESO/(ALTURA*ALTURA)
*/

#include <iostream>
#include <iomanip>

int main() {

    float matrizIMC[10][3];

    int contador = 0;

    for(int i = 0; i < 10; i++){
        std::cout << "Insira o peso " << i << ":\n";
        std::cin >> matrizIMC[i][0]; 
        std::cout << "Insira a altura " << i << ":\n";
        std::cin >> matrizIMC[i][1]; 
        matrizIMC[i][2] = (matrizIMC[i][0]) / (matrizIMC[i][1] * matrizIMC[i][1]);
    }

    std::cout << std::endl;

    for(int i = 0; i < 10; i++){
        std::cout << std::setprecision(2) << std::fixed;
        std::cout << "Peso: " << i + 1 << ": " << matrizIMC[i][0] << std::endl;
        std::cout << "Altura: " << i + 1 << ": " << matrizIMC[i][0] << std::endl;
        std::cout << "IMC: " << matrizIMC[i][2] << std::endl;
        std::cout << "\n\n";

        if (matrizIMC[i][2] > 25.0f) 
            contador++;
    }

    std::cout << contador << " tem IMC > 25" << std::endl;

    return 0;
}