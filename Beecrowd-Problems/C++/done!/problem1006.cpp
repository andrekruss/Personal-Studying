#include <iostream>
#include <iomanip>

int main() {

    double a, b, c;
    double weightA = 2, weightB = 3, weightC = 5;
    double average;

    std::cin >> a;
    std::cin >> b;
    std::cin >> c;

    average = (a * weightA + b * weightB + c * weightC)/ (weightA + weightB + weightC);

    std::cout << std::fixed << std::setprecision(1);
    std::cout << "MEDIA = " << average << std::endl;

    return 0;
}