#include <iostream>
#include <iomanip>

int main() {

    std::string name;
    double fixed_salary, total_sales;

    std::cin >> name;
    std::cin >> fixed_salary;
    std::cin >> total_sales;

    std::cout << std::fixed << std::setprecision(2);
    std::cout << "TOTAL = R$ " << fixed_salary + 0.15 * total_sales << std::endl;

    return 0;
}