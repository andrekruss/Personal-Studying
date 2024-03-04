#include <iostream>
#include <iomanip>

int main() {

    int employee_number, worked_hours;
    double salary;

    std::cin >> employee_number;
    std::cin >> worked_hours;
    std::cin >> salary;

    std::cout << std::fixed << std::setprecision(2);
    std::cout << "NUMBER = " << employee_number << std::endl;
    std::cout << "SALARY = U$ " << worked_hours * salary << std::endl;

    return 0;
}