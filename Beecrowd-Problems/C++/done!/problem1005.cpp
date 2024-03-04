#include <iostream>
#include <iomanip>

int main() {

    double a, b;
    double pesoA = 3.5, pesoB = 7.5;
    double media;

    std::cin >> a;
    std::cin >> b;

    media = (pesoA * a + pesoB * b) / (pesoA + pesoB);

    std::cout << std::fixed << std::setprecision(5);
    std::cout << "MEDIA = " << media << std::endl;

    return  0;
}