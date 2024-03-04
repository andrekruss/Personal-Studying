#include <iostream>
#include <iomanip>

int main() {
    int distance;
    double spentFuel;

    std::cin >> distance;
    std::cin >> spentFuel;

    double consumption = distance / spentFuel;

    std::cout << std::fixed << std::setprecision(3);
    std::cout << consumption << " km/l\n";

    return 0;
}