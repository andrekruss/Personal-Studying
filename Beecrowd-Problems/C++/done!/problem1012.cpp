#include <iostream>
#include <iomanip>

int main() {
	double pi = 3.14159;
	double a, b, c;
	std::cin >> a;
	std::cin >> b;
	std::cin >> c;

	std::cout << std::fixed << std::setprecision(3);
	std::cout << "TRIANGULO: " << (a * c) / 2 << std::endl;
	std::cout << "CIRCULO: " << pi * c * c << std::endl;
	std::cout << "TRAPEZIO: " << (a + b) * c / 2 << std::endl;
	std::cout << "QUADRADO: " << b * b << std::endl;
	std::cout << "RETANGULO: " << a * b << std::endl;

	return 0;
}