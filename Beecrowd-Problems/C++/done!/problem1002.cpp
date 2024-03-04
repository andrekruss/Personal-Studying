#include <iostream>
#include <iomanip>

int main() {

    double R;
    double pi = 3.14159;

    std::cin >> R;

    std::cout << std::fixed << std::setprecision(4);
    std::cout << "A=" << pi * R * R << std::endl;

    return 0;
}