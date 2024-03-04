#include <iostream>
#include <iomanip>

int main() {
    double pi = 3.14159, r;
    std::cin >> r;
    double volume = (4.0 / 3) * pi * r * r * r;
    std::cout << std::fixed << std::setprecision(3);
    std::cout << "VOLUME = " << volume << std::endl;
    return 0;
}